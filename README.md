# Monitor Photovoltaic (PV) System with LiFePO4 Batteries

Measure:
1. LiFePo4 cell and block voltage
2. Current and voltage from solar panel strings
3. 230 V output current 
4. 230 V fallback current

Send data via WiFi to local "IoT Server" and make data accessible in InfluxDB.

_STATUS: WIP, partially tested_

LiFePO4 (aka LFP) batteries are known as safe and the voltages may not be dangerous for humans.

**BUT ... WARNING: LFP batteries contain a lot of Energy! Shorts can cause enormous sparks, melt metal and cause fire.**

Check your circuits twice for shorts (soldering problems)! 
Be careful touching the circuit with metal tools (e.g. multimeter tips).
Put the circuit in a safe enclosure!


# Sensor Device

The device measures up to 16 voltages and sends them to the IoT Server. 

Hardware is cheap and simple, based on:
- an ESP8266 "D1 Mini" controller with WIFI
- a CD74HC4067 as 16 channel (or 74HC4051 as 8 channel) multiplexer board
- AMS1117 based step down power module for 3.3 V supply

The sensor is designed to connect via a "8s JST XH " y-splitter cable between the
battery and the BMS. 
Alternatively connect Pin1 to "minus", Pin2 to the plus of 1st cell, Pin3 to the plus of 2nd cell and so on.

![Sensor PCB](https://github.com/ma-ha/pv-mon/blob/main/sensor16ADC/Sensor-PCB.png) 

## Sensor Firmware

To upload the [firmware](sensor16ADC/bat-mon-firmware/bat-mon-firmware.ino) 
to the "D1 Mini" via the Arduino IDE, you must 
add `http://arduino.esp8266.com/stable/package_esp8266com_index.json` as 
"Additiona Boards Manager URLs" in the "File" > "Settings" menu. 
Then install the newest version in "Tools" > "Board" > "Board Manager" the "esp8266".
For me the "NodeMCU v0.9" board works fine.

Then just 
- connect the D1 Mini via USB 
- double click the [bat-mon-firmware.ino](sensor16ADC/bat-mon-firmware/bat-mon-firmware.ino) 
  to oben it in the Arduino IDE and 
- click the "Upload" button to compile the code and program the module

The sensor will read out the voltages once per minute and send them to the "IoT API Server".

WARNING: If you use the Arduino IDE for NodeMCU, you will overwrite the LUA SDK. 
If you want back the Lua SDK, use the “flasher” to re-install the firmware. 
You can download the flasher from their Github page https://github.com/nodemcu/nodemcu-flasher.

# Server Set Up

The "server" (a PC is ok) need to run an "IoT API Server", 
where the sensors post readings data and an InfluxDB to store and analyze the data.

To make things as easy, I recommend to run the server and the DB as Docker containers.

## InfluxDB

The Influx DB stores the sensor data as timelines. 
You can query data and show data as graphs on dashboards using your browser.

Prepare a folders for DB, e.g. 

    mkdir ~/influxdb2
    cd ~/influxdb2
    mkdir db
    mkdir config
    export DB_DIR=$PWD

Start InfluxDB docker server:

    docker run -p 8086:8086 -d --restart=always --name influxdb \
      -v $DB_DIR/db:/var/lib/influxdb2 \
      -v $DB_DIR/config:/etc/influxdb2 \
      -e DOCKER_INFLUXDB_INIT_USERNAME=mysuerpadmin \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=mysuerpadminpassord \
      -e DOCKER_INFLUXDB_INIT_ORG=my-org \
      -e DOCKER_INFLUXDB_INIT_BUCKET=pv \
      influxdb:2.1-alpine

Open http://localhost:8086 in your browser and finalize the set up.

Finally create or copy an API token for the API server, via "Data" manu and "API Tokens" tab.

## IoT API Server 

The API server listens on 8899.

Devices can post JSON data to the endpoint 
`http:/server-ip:8899/<bucket>/<data-type>?key=<api-key>`

JSON data is e.g.:

    { src: 'Bat1_7', fld: 'U', val: 0.06 }

## Start on Console

Put the InfluxDB API key into the two YAML files in the `iot-api-server/config/` dir.

If you modify the `API_KEY`, don't forget to chage that also in the `bat-mon-firmware.ino`.

To start the server on the console for testing, execute:

    cd iot-api-server
    npm install
    export NODE_ENV=DEV
    node app.js

To send some test data execute: `mocha test/testPostApiSvr.js`

## Run as Docker Server

Build and install the IoT API Server:

    cd iot-api-server
    docker build -t mh/iot-api-server . 
    docker rm iot-api-server
    docker run -d -e NODE_ENV=MAIN --link influxdb:influxdb  -p 8899:8899  --name iot-api-server  mh/iot-api-server

To send some test data execute: 

    export NODE_ENV=DEV
    mocha test/testPostApiSvr.js
