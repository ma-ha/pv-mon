const axios = require( 'axios' )


describe( 'Test IoT API Svr', () => { 

  it( 'Test Post Akku Error', async () => {
    try {
      await axios.post( 
        'http://localhost:'+cfg.API_PORT+'/pv/akku?key='+cfg.API_KEY,
        {
          src: 'Bat01_1',
          fldX: 'U',
          val: Math.random() * 3.3
        }
      )
    } catch (e) { return true }
    throw Error()
  })

  it( 'Test Post Akku Authz Error', async () => {
    try {
      await axios.post( 
        'http://localhost:'+cfg.API_PORT+'/pv/akku?key='+cfg.API_KEY,
        {
          src: 'Bat01_1',
          fldX: 'U',
          val: Math.random() * 3.3
        }
      )
      return false
    } catch (e) { return true }
    
  })


})