/**
   LiFePO4 8s Battery Monitoring
   2022 by ma-ha
   https://github.com/ma-ha/pv-mon
*/

#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

// PC address with "IoT Server API" on host, e.g. 
// #define SERVER_IP "192.168.178.112:8899"
#define SERVER_IP ">>>>IOT-SERVER-IP:8899<<<<"

#ifndef STASSID
#define STASSID ">>>>WLAN-ID<<<<<"
#define STAPSK  ">>>>WLAN-KEY<<<<"
#define API_KEY "SOME-API-TOKEN"
#endif

char buf[50];
float u1 = 0.0;
float u2 = 0.0; 

// ----------------------------------------------------------------------------

void setup() {

  Serial.begin(115200);

  Serial.println();
  Serial.println();
  Serial.println( "EspBatMon 0.2.0" );

  WiFi.begin(STASSID, STAPSK);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected! IP address: ");
  Serial.println(WiFi.localIP());

  pinMode( LED_BUILTIN, OUTPUT );  
}

// ----------------------------------------------------------------------------

void loop() {
  digitalWrite( LED_BUILTIN, LOW ); 
  u1 = 0.0;
  // read out each single cell
  for ( int cellNo = 0; cellNo < 8; cellNo++ ) {
    u2 = readVolt( cellNo );
    sendDta( 1, ( cellNo + 1 ), ( u2 - u1 ) );
    u1 = u2;
  }
  // send total voltage
  sendDta( 1, 101, u2 );

  /* uncomment, if you need to monitor a 2nd 8s battery:
  u1 = 0.0;
  for ( int cellNo = 0; cellNo < 8; cellNo++ ) {
    u2 = readVolt( 8 + cellNo );
    sendDta( 2, ( cellNo + 1 ), ( u2 - u1 ) );
    u1 = u2;
  }
  // send total voltage
  sendDta( 2, 101, u2 );
  */
  digitalWrite( LED_BUILTIN, HIGH );  
  delay(60000);
}

// ----------------------------------------------------------------------------

void sendDta( byte batNo, byte cellNo, float u ) {
  if ((WiFi.status() == WL_CONNECTED)) { // wait for WiFi connection
    WiFiClient client;
    HTTPClient http;
  
    // configure API server and URL
    http.begin( client, "http://" SERVER_IP "/pv/tst?key=" API_KEY ); 
    http.addHeader( "Content-Type", "application/json") ;

    Serial.print("[HTTP] POST... ");
    int httpCode = 0;
    char floatStr[10];
    dtostrf( u, 4, 2, floatStr );
    if ( cellNo == 101 ) { // total
      sprintf(buf, "{\"src\":\"Bat%d\",\"fld\":\"U\",\"val\":%s}", batNo, floatStr );
    } else { // single cell
      sprintf(buf, "{\"src\":\"Bat%d_%d\",\"fld\":\"U\",\"val\":%s}", batNo,cellNo, floatStr );
    } 
    Serial.println(buf);
    httpCode = http.POST( buf );
  
    // httpCode will be negative on error
    if (httpCode > 0) {
      Serial.printf("[HTTP] POST... code: %d\n", httpCode);
      if (httpCode != HTTP_CODE_OK) {
        const String& payload = http.getString();
        Serial.println("[HTTP] ERROR:\n"); Serial.println(payload);
      }
    } else {
      Serial.printf("[HTTP] POST... failed, error: %s\n", http.errorToString(httpCode).c_str());
    }
  
    http.end();
  } else {
     Serial.println("WFI not connected");
  }
}

// ----------------------------------------------------------------------------

void initSwtch() {
  pinMode( D1, OUTPUT );
  pinMode( D2, OUTPUT );
  pinMode( D3, OUTPUT );
  pinMode( D4, OUTPUT );
  pinMode( D7, OUTPUT );
  digitalWrite( D7, HIGH ); 
}

// ----------------------------------------------------------------------------

void switchCh( byte ch ) {
  Serial.print( "CH=" ); Serial.print( ch ); Serial.print( " " );
  if ( (ch & 0b1000) == 0b1000 ) { digitalWrite( D4, HIGH );  Serial.print( "X" ); } 
    else { digitalWrite( D4, LOW ); Serial.print( "-" ); }
  if ( (ch & 0b0100) == 0b0100 ) { digitalWrite( D3, HIGH );  Serial.print( "X" ); } 
    else { digitalWrite( D3, LOW ); Serial.print( "-" ); }
  if ( (ch & 0b0010) == 0b0010 ) { digitalWrite( D2, HIGH );  Serial.print( "X" ); }
    else { digitalWrite( D2, LOW ); Serial.print( "-" ); }
  if ( (ch & 0b0001) == 0b0001 ) { digitalWrite( D1, HIGH );  Serial.print( "X" ); } 
    else { digitalWrite( D1, LOW ); Serial.print( "-" ); }
}

// ----------------------------------------------------------------------------

float readVolt( byte ch ) {
  switchCh( ch );
  int sensorValue = analogRead( A0 );
  float voltage = sensorValue * (33 / 1023.0); // needs a 1:10 R net
  Serial.print( " U=" );
  Serial.println( voltage );
  return voltage;
}
