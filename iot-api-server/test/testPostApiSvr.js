const axios = require( 'axios' )
const cfg   = require( 'config' )


describe( 'Test IoT API Svr', () => { 

  // before( async () => { })


  it( 'Test Post Akku', async () => {
    await axios.post( 
      'http://localhost:'+cfg.API_PORT+'/pv/akku?key='+cfg.API_KEY,
      {
        src: 'Bat01_1',
        fld: 'U',
        val: Math.random() * 3.3
      }
    )
  })

  it( 'Test Post String', async () => {
    await axios.post( 
      'http://localhost:'+cfg.API_PORT+'/pv/akku?key='+cfg.API_KEY,
      {
        src: 'Str01',
        fld: 'U',
        val: 20 + Math.random() * 6
      }
    )
  })

})