EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:CD74HC4067M U2
U 1 1 623625D4
P 4350 2250
F 0 "U2" H 4550 3150 50  0000 C CNN
F 1 "CD74HC4067M" H 3950 3200 50  0000 C CNN
F 2 "AudioChannel:74HC4067DB" H 5250 1250 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 4000 3100 50  0001 C CNN
	1    4350 2250
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 62363537
P 2600 2200
F 0 "U1" H 2800 1350 50  0000 C CNN
F 1 "WeMos_D1_mini" H 3000 1450 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 2600 1050 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 750 1050 50  0001 C CNN
	1    2600 2200
	1    0    0    -1  
$EndComp
Text GLabel 1400 1650 2    50   Output ~ 0
GND
Text GLabel 1400 2450 2    50   Output ~ 0
+24V
Text GLabel 1400 1750 2    50   Output ~ 0
+3.2V
Text GLabel 1400 1850 2    50   Output ~ 0
+6.4V
Text GLabel 1400 1950 2    50   Output ~ 0
+9.6V
Text GLabel 1400 2050 2    50   Output ~ 0
+12.8V
Text GLabel 1400 2150 2    50   Output ~ 0
+16.2V
Text GLabel 1400 2250 2    50   Output ~ 0
+19.4V
Text GLabel 3000 1700 2    50   Input ~ 0
ADC
Text GLabel 3850 1750 0    50   Output ~ 0
ADC
Text GLabel 3000 1900 2    50   Output ~ 0
D1
Text GLabel 3000 2000 2    50   Output ~ 0
D2
Text GLabel 3000 2100 2    50   Output ~ 0
D3
Text GLabel 3000 2200 2    50   Output ~ 0
D4
Text GLabel 2700 1400 1    50   Input ~ 0
3.3V
Text GLabel 4350 1250 1    50   Input ~ 0
3.3V
Text GLabel 2600 3000 3    50   Input ~ 0
GND
Text GLabel 4350 3350 3    50   Input ~ 0
GND
Text GLabel 3850 2850 0    50   Input ~ 0
GND
Text GLabel 900  3500 0    50   Input ~ 0
GND
Text GLabel 1400 3600 0    50   Output ~ 0
3.3V
$Comp
L Device:R_Small R1
U 1 1 6238042D
P 5000 1400
F 0 "R1" V 4950 1400 50  0000 C CNN
F 1 "9" V 5000 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5000 1400 50  0001 C CNN
F 3 "~" H 5000 1400 50  0001 C CNN
	1    5000 1400
	1    0    0    -1  
$EndComp
Text GLabel 5000 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R2
U 1 1 6238297A
P 5000 2400
F 0 "R2" V 4950 2400 50  0000 C CNN
F 1 "1" V 5000 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5000 2400 50  0001 C CNN
F 3 "~" H 5000 2400 50  0001 C CNN
	1    5000 2400
	1    0    0    1   
$EndComp
Text GLabel 5700 1200 1    50   Output ~ 0
+24V
Text GLabel 5000 1200 1    50   Output ~ 0
+3.2V
Text GLabel 5100 1200 1    50   Output ~ 0
+6.4V
Text GLabel 5200 1200 1    50   Output ~ 0
+9.6V
Text GLabel 5300 1200 1    50   Output ~ 0
+12.8V
Text GLabel 5400 1200 1    50   Output ~ 0
+16.2V
Text GLabel 5500 1200 1    50   Output ~ 0
+19.4V
$Comp
L Device:R_Small R3
U 1 1 62384BB0
P 5100 1400
F 0 "R3" V 5050 1400 50  0000 C CNN
F 1 "9" V 5100 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5100 1400 50  0001 C CNN
F 3 "~" H 5100 1400 50  0001 C CNN
	1    5100 1400
	1    0    0    -1  
$EndComp
Text GLabel 5100 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R4
U 1 1 62384BB7
P 5100 2400
F 0 "R4" V 5050 2400 50  0000 C CNN
F 1 "1" V 5100 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5100 2400 50  0001 C CNN
F 3 "~" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 1650 5100 1650
$Comp
L Device:R_Small R5
U 1 1 623854FD
P 5200 1400
F 0 "R5" V 5150 1400 50  0000 C CNN
F 1 "9" V 5200 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5200 1400 50  0001 C CNN
F 3 "~" H 5200 1400 50  0001 C CNN
	1    5200 1400
	1    0    0    -1  
$EndComp
Text GLabel 5200 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R6
U 1 1 62385504
P 5200 2400
F 0 "R6" V 5150 2400 50  0000 C CNN
F 1 "1" V 5200 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5200 2400 50  0001 C CNN
F 3 "~" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 1750 5200 1750
$Comp
L Device:R_Small R7
U 1 1 62386012
P 5300 1400
F 0 "R7" V 5250 1400 50  0000 C CNN
F 1 "9" V 5300 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5300 1400 50  0001 C CNN
F 3 "~" H 5300 1400 50  0001 C CNN
	1    5300 1400
	1    0    0    -1  
$EndComp
Text GLabel 5300 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R8
U 1 1 62386019
P 5300 2400
F 0 "R8" V 5250 2400 50  0000 C CNN
F 1 "1" V 5300 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5300 2400 50  0001 C CNN
F 3 "~" H 5300 2400 50  0001 C CNN
	1    5300 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 1850 5300 1850
$Comp
L Device:R_Small R9
U 1 1 62386836
P 5400 1400
F 0 "R9" V 5350 1400 50  0000 C CNN
F 1 "9" V 5400 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5400 1400 50  0001 C CNN
F 3 "~" H 5400 1400 50  0001 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
Text GLabel 5400 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R10
U 1 1 6238683D
P 5400 2400
F 0 "R10" V 5350 2400 50  0000 C CNN
F 1 "1" V 5400 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5400 2400 50  0001 C CNN
F 3 "~" H 5400 2400 50  0001 C CNN
	1    5400 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 1950 5400 1950
$Comp
L Device:R_Small R11
U 1 1 62386F0A
P 5500 1400
F 0 "R11" V 5450 1400 50  0000 C CNN
F 1 "9" V 5500 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5500 1400 50  0001 C CNN
F 3 "~" H 5500 1400 50  0001 C CNN
	1    5500 1400
	1    0    0    -1  
$EndComp
Text GLabel 5500 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R12
U 1 1 62386F11
P 5500 2400
F 0 "R12" V 5450 2400 50  0000 C CNN
F 1 "1" V 5500 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5500 2400 50  0001 C CNN
F 3 "~" H 5500 2400 50  0001 C CNN
	1    5500 2400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 62387971
P 5600 1400
F 0 "R13" V 5550 1400 50  0000 C CNN
F 1 "9" V 5600 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5600 1400 50  0001 C CNN
F 3 "~" H 5600 1400 50  0001 C CNN
	1    5600 1400
	1    0    0    -1  
$EndComp
Text GLabel 5600 2500 3    50   Output ~ 0
GND
$Comp
L Device:R_Small R14
U 1 1 62387978
P 5600 2400
F 0 "R14" V 5550 2400 50  0000 C CNN
F 1 "1" V 5600 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5600 2400 50  0001 C CNN
F 3 "~" H 5600 2400 50  0001 C CNN
	1    5600 2400
	1    0    0    1   
$EndComp
Wire Wire Line
	5000 1500 5000 1550
Wire Wire Line
	5100 1500 5100 1650
Wire Wire Line
	5200 1500 5200 1750
Wire Wire Line
	5300 1500 5300 1850
Wire Wire Line
	5400 1500 5400 1950
Wire Wire Line
	5500 1500 5500 2050
Wire Wire Line
	5600 1500 5600 2150
$Comp
L Connector:Conn_01x09_Male J1
U 1 1 62389C7C
P 1200 2050
F 0 "J1" H 1308 2631 50  0000 C CNN
F 1 "Conn_01x09_Male" H 1308 2540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 1200 2050 50  0001 C CNN
F 3 "~" H 1200 2050 50  0001 C CNN
	1    1200 2050
	1    0    0    -1  
$EndComp
Text GLabel 1400 2350 2    50   Output ~ 0
+22.6
Text GLabel 5600 1200 1    50   Output ~ 0
+22.6
$Comp
L Device:R_Small R15
U 1 1 6238F1BD
P 5700 1400
F 0 "R15" V 5650 1400 50  0000 C CNN
F 1 "9" V 5700 1400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5700 1400 50  0001 C CNN
F 3 "~" H 5700 1400 50  0001 C CNN
	1    5700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 6238F5AE
P 5700 2400
F 0 "R16" V 5650 2400 50  0000 C CNN
F 1 "1" V 5700 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 5700 2400 50  0001 C CNN
F 3 "~" H 5700 2400 50  0001 C CNN
	1    5700 2400
	1    0    0    1   
$EndComp
Text GLabel 5700 2500 3    50   Output ~ 0
GND
Wire Wire Line
	5700 1500 5700 2250
Text GLabel 3850 2150 0    50   Input ~ 0
D1
Text GLabel 3850 2250 0    50   Input ~ 0
D2
Text GLabel 3850 2350 0    50   Input ~ 0
D3
Text GLabel 3850 2450 0    50   Input ~ 0
D4
NoConn ~ 4850 2350
NoConn ~ 4850 2450
NoConn ~ 4850 2550
NoConn ~ 4850 2650
NoConn ~ 4850 2750
NoConn ~ 4850 2850
NoConn ~ 4850 2950
NoConn ~ 4850 3050
NoConn ~ 3000 1800
NoConn ~ 3000 2300
NoConn ~ 3000 2400
NoConn ~ 3000 2500
NoConn ~ 3000 2600
NoConn ~ 2500 1400
NoConn ~ 2200 1800
NoConn ~ 2200 2100
NoConn ~ 2200 2200
Text GLabel 900  3300 0    50   Input ~ 0
+24V
Wire Wire Line
	900  3300 1000 3300
Wire Wire Line
	1400 3400 1350 3400
Wire Wire Line
	1350 3400 1350 3300
Connection ~ 1350 3300
Wire Wire Line
	1350 3300 1400 3300
$Comp
L AudioChannel-cache:Pololu-D24V3F3 U3
U 1 1 623A75EE
P 1550 3150
F 0 "U3" H 2000 3050 50  0000 L CNN
F 1 "Pololu-D24V3F3" H 1550 2600 50  0000 L CNN
F 2 "AudioChannel:Pololu-D24V3F3" H 1550 3150 50  0001 C CNN
F 3 "" H 1550 3150 50  0001 C CNN
	1    1550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2050 5500 2050
Wire Wire Line
	4850 2150 5600 2150
Wire Wire Line
	5000 1200 5000 1300
Wire Wire Line
	5100 1200 5100 1300
Wire Wire Line
	5200 1200 5200 1300
Wire Wire Line
	5300 1200 5300 1300
Wire Wire Line
	5400 1200 5400 1300
Wire Wire Line
	5500 1200 5500 1300
Wire Wire Line
	5600 1200 5600 1300
Wire Wire Line
	5700 1200 5700 1300
Wire Wire Line
	4850 1550 5000 1550
Wire Wire Line
	5000 1550 5000 2300
Connection ~ 5000 1550
Wire Wire Line
	5100 2300 5100 1650
Connection ~ 5100 1650
Wire Wire Line
	5200 1750 5200 2300
Connection ~ 5200 1750
Wire Wire Line
	4850 2250 5700 2250
Wire Wire Line
	5300 1850 5300 2300
Connection ~ 5300 1850
Wire Wire Line
	5400 2300 5400 1950
Connection ~ 5400 1950
Wire Wire Line
	5500 2050 5500 2300
Connection ~ 5500 2050
Wire Wire Line
	5600 2150 5600 2300
Connection ~ 5600 2150
Wire Wire Line
	1400 3500 1000 3500
$Comp
L Device:CP1_Small C1
U 1 1 62425038
P 1000 3400
F 0 "C1" H 1091 3446 50  0000 L CNN
F 1 "33uF" H 1091 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1000 3400 50  0001 C CNN
F 3 "~" H 1000 3400 50  0001 C CNN
	1    1000 3400
	1    0    0    -1  
$EndComp
Connection ~ 1000 3300
Wire Wire Line
	1000 3300 1350 3300
Connection ~ 1000 3500
Wire Wire Line
	1000 3500 900  3500
Wire Wire Line
	5700 2300 5700 2250
Connection ~ 5700 2250
$EndSCHEMATC
