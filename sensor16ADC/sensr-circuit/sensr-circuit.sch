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
F 0 "U2" H 4600 3300 50  0000 C CNN
F 1 "CD74HC4067M" H 4800 3200 50  0000 C CNN
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
Text GLabel 1400 3500 0    50   Input ~ 0
GND
Text GLabel 1400 3600 0    50   Output ~ 0
3.3V
$Comp
L Device:R_Small R1
U 1 1 6238042D
P 4950 1550
F 0 "R1" V 4900 1550 50  0000 C CNN
F 1 "9" V 4950 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 1550 50  0001 C CNN
F 3 "~" H 4950 1550 50  0001 C CNN
	1    4950 1550
	0    1    1    0   
$EndComp
Text GLabel 6100 1550 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R2
U 1 1 6238297A
P 6000 1550
F 0 "R2" V 5950 1550 50  0000 C CNN
F 1 "1" V 6000 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 1550 50  0001 C CNN
F 3 "~" H 6000 1550 50  0001 C CNN
	1    6000 1550
	0    1    1    0   
$EndComp
Text GLabel 5800 1400 1    50   Output ~ 0
+24V
Text GLabel 5100 1400 1    50   Output ~ 0
+3.2V
Text GLabel 5200 1400 1    50   Output ~ 0
+6.4V
Text GLabel 5300 1400 1    50   Output ~ 0
+9.6V
Text GLabel 5400 1400 1    50   Output ~ 0
+12.8V
Text GLabel 5500 1400 1    50   Output ~ 0
+16.2V
Text GLabel 5600 1400 1    50   Output ~ 0
+19.4V
Wire Wire Line
	5050 1550 5100 1550
$Comp
L Device:R_Small R3
U 1 1 62384BB0
P 4950 1650
F 0 "R3" V 4900 1650 50  0000 C CNN
F 1 "9" V 4950 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 1650 50  0001 C CNN
F 3 "~" H 4950 1650 50  0001 C CNN
	1    4950 1650
	0    1    1    0   
$EndComp
Text GLabel 6100 1650 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R4
U 1 1 62384BB7
P 6000 1650
F 0 "R4" V 5950 1650 50  0000 C CNN
F 1 "1" V 6000 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 1650 50  0001 C CNN
F 3 "~" H 6000 1650 50  0001 C CNN
	1    6000 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1650 5200 1650
$Comp
L Device:R_Small R5
U 1 1 623854FD
P 4950 1750
F 0 "R5" V 4900 1750 50  0000 C CNN
F 1 "9" V 4950 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 1750 50  0001 C CNN
F 3 "~" H 4950 1750 50  0001 C CNN
	1    4950 1750
	0    1    1    0   
$EndComp
Text GLabel 6100 1750 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R6
U 1 1 62385504
P 6000 1750
F 0 "R6" V 5950 1750 50  0000 C CNN
F 1 "1" V 6000 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 1750 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1750 5300 1750
$Comp
L Device:R_Small R7
U 1 1 62386012
P 4950 1850
F 0 "R7" V 4900 1850 50  0000 C CNN
F 1 "9" V 4950 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 1850 50  0001 C CNN
F 3 "~" H 4950 1850 50  0001 C CNN
	1    4950 1850
	0    1    1    0   
$EndComp
Text GLabel 6100 1850 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R8
U 1 1 62386019
P 6000 1850
F 0 "R8" V 5950 1850 50  0000 C CNN
F 1 "1" V 6000 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 1850 50  0001 C CNN
F 3 "~" H 6000 1850 50  0001 C CNN
	1    6000 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1850 5400 1850
$Comp
L Device:R_Small R9
U 1 1 62386836
P 4950 1950
F 0 "R9" V 4900 1950 50  0000 C CNN
F 1 "9" V 4950 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4950 1950
	0    1    1    0   
$EndComp
Text GLabel 6100 1950 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R10
U 1 1 6238683D
P 6000 1950
F 0 "R10" V 5950 1950 50  0000 C CNN
F 1 "1" V 6000 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 1950 50  0001 C CNN
F 3 "~" H 6000 1950 50  0001 C CNN
	1    6000 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1950 5500 1950
$Comp
L Device:R_Small R11
U 1 1 62386F0A
P 4950 2050
F 0 "R11" V 4900 2050 50  0000 C CNN
F 1 "9" V 4950 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 2050 50  0001 C CNN
F 3 "~" H 4950 2050 50  0001 C CNN
	1    4950 2050
	0    1    1    0   
$EndComp
Text GLabel 6100 2050 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R12
U 1 1 62386F11
P 6000 2050
F 0 "R12" V 5950 2050 50  0000 C CNN
F 1 "1" V 6000 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 2050 50  0001 C CNN
F 3 "~" H 6000 2050 50  0001 C CNN
	1    6000 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 62387971
P 4950 2150
F 0 "R13" V 4900 2150 50  0000 C CNN
F 1 "9" V 4950 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 2150 50  0001 C CNN
F 3 "~" H 4950 2150 50  0001 C CNN
	1    4950 2150
	0    1    1    0   
$EndComp
Text GLabel 6100 2150 2    50   Output ~ 0
GND
$Comp
L Device:R_Small R14
U 1 1 62387978
P 6000 2150
F 0 "R14" V 5950 2150 50  0000 C CNN
F 1 "1" V 6000 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 2150 50  0001 C CNN
F 3 "~" H 6000 2150 50  0001 C CNN
	1    6000 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2150 5700 2150
Wire Wire Line
	5100 1400 5100 1550
Connection ~ 5100 1550
Wire Wire Line
	5200 1400 5200 1650
Connection ~ 5200 1650
Wire Wire Line
	5300 1400 5300 1750
Connection ~ 5300 1750
Wire Wire Line
	5400 1400 5400 1850
Connection ~ 5400 1850
Wire Wire Line
	5500 1400 5500 1950
Connection ~ 5500 1950
Wire Wire Line
	5600 1400 5600 2050
Wire Wire Line
	5050 2050 5600 2050
Connection ~ 5600 2050
Wire Wire Line
	5700 1400 5700 2150
Connection ~ 5700 2150
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
Text GLabel 5700 1400 1    50   Output ~ 0
+22.6
$Comp
L Device:R_Small R15
U 1 1 6238F1BD
P 4950 2250
F 0 "R15" V 4900 2250 50  0000 C CNN
F 1 "9" V 4950 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 6238F5AE
P 6000 2250
F 0 "R16" V 5950 2250 50  0000 C CNN
F 1 "1" V 6000 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6000 2250 50  0001 C CNN
F 3 "~" H 6000 2250 50  0001 C CNN
	1    6000 2250
	0    1    1    0   
$EndComp
Text GLabel 6100 2250 2    50   Output ~ 0
GND
Wire Wire Line
	5050 2250 5800 2250
Wire Wire Line
	5800 1400 5800 2250
Connection ~ 5800 2250
Wire Wire Line
	5800 2250 5900 2250
Wire Wire Line
	5100 1550 5900 1550
Wire Wire Line
	5200 1650 5900 1650
Wire Wire Line
	5300 1750 5900 1750
Wire Wire Line
	5400 1850 5900 1850
Wire Wire Line
	5500 1950 5900 1950
Wire Wire Line
	5600 2050 5900 2050
Wire Wire Line
	5700 2150 5900 2150
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
Text GLabel 1250 3300 0    50   Input ~ 0
+24V
Wire Wire Line
	1250 3300 1350 3300
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
$EndSCHEMATC
