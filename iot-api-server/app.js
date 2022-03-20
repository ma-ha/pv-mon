const cfg = require( 'config' )
const express    = require( 'express' )
const bodyParser = require( 'body-parser' )

const {InfluxDB} = require('@influxdata/influxdb-client')
const {Point} = require('@influxdata/influxdb-client')

// ============================================================================

console.log( 'DB:', cfg.INFLUX_URL )

function dbSend( dtaType, srcHost, field, value ) {
  const client = new InfluxDB( {url: cfg.INFLUX_URL, token: cfg.INFLUX_TOKEN })
  const writeApi = client.getWriteApi( cfg.ORG, cfg.BUCKET )
  writeApi.useDefaultTags({ host: srcHost })
  
  const point = new Point( dtaType ).floatField( field, value ) 
  writeApi.writePoint( point )
  console.log( point )
  
  writeApi.close().then( () => { /* console.log('FINISHED') */ })
    .catch( e => { console.error( 'Close DB ERROR', e.message ) })
}

// ============================================================================

const app = express()

app.use( bodyParser.json() )
app.use( reqChk )

app.post( '/'+cfg.BUCKET+'/:dtatype', ( req, res ) => {
  dbSend( req.params.dtatype, req.body.src, req.body.fld, req.body.val )
  res.send('OK')
})  

app.listen( cfg.API_PORT, () => {
  console.log(`POST data to http://localhost:${cfg.API_PORT}/${cfg.BUCKET}/<data-type>`)
})

// ----------------------------------------------------------------------------

function reqChk ( req, res, next ) {
  if ( req.query.key != cfg.API_KEY ) { 
    return next( 
      new UnauthorizedError( 'Unauthorized',  { message: 'key error' } )
    )
  }
  console.log( 'body', req.body )
  if ( ! req.body.src || ! req.body.fld || ! req.body.hasOwnProperty('val') ) { 
    return next( 
      new DataError( 'DataError',  { message: 'data error' } )
    )
  }
  next()
}

function DataError( code, error ) {
  this.name    = "DataError"
  this.message = error.message
  Error.call( this, error.message )
  Error.captureStackTrace( this, this.constructor )
  this.code   = code
  this.status = 401
  this.inner  = error
}
DataError.prototype = Object.create( Error.prototype )
DataError.prototype.constructor = DataError

function UnauthorizedError( code, error ) {
  this.name    = "UnauthorizedError"
  this.message = error.message
  Error.call( this, error.message )
  Error.captureStackTrace( this, this.constructor )
  this.code   = code
  this.status = 401
  this.inner  = error
}
UnauthorizedError.prototype = Object.create( Error.prototype )
UnauthorizedError.prototype.constructor = UnauthorizedError