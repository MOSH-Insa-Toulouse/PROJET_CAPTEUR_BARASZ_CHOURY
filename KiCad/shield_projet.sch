EESchema Schematic File Version 4
LIBS:shield_projet-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R R0
U 1 1 60361BEE
P 1500 1450
F 0 "R0" H 1570 1496 50  0000 L CNN
F 1 "RSENSOR" H 1570 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 1450 50  0001 C CNN
F 3 "~" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60363BAE
P 2750 2000
F 0 "R1" H 2680 1954 50  0000 R CNN
F 1 "100k" H 2680 2045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 2000 50  0001 C CNN
F 3 "~" H 2750 2000 50  0001 C CNN
	1    2750 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 603643FC
P 2250 2000
F 0 "C1" H 2365 2046 50  0000 L CNN
F 1 "100n" H 2365 1955 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 2288 1850 50  0001 C CNN
F 3 "~" H 2250 2000 50  0001 C CNN
	1    2250 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60364E03
P 2250 2300
F 0 "#PWR010" H 2250 2050 50  0001 C CNN
F 1 "GND" H 2255 2127 50  0000 C CNN
F 2 "" H 2250 2300 50  0001 C CNN
F 3 "" H 2250 2300 50  0001 C CNN
	1    2250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 60365544
P 1500 1150
F 0 "#PWR08" H 1500 1000 50  0001 C CNN
F 1 "+5V" H 1515 1323 50  0000 C CNN
F 2 "" H 1500 1150 50  0001 C CNN
F 3 "" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1150 1500 1300
Wire Wire Line
	1500 1600 1500 1750
Wire Wire Line
	1500 1750 1650 1750
Wire Wire Line
	1950 1750 2250 1750
Wire Wire Line
	2250 1750 2250 1850
Wire Wire Line
	2250 1750 2750 1750
Wire Wire Line
	2750 1750 2750 1850
Connection ~ 2250 1750
Wire Wire Line
	2250 2150 2250 2250
Wire Wire Line
	2750 2150 2750 2250
Wire Wire Line
	2750 2250 2250 2250
Connection ~ 2250 2250
Wire Wire Line
	2250 2250 2250 2300
Text GLabel 3050 1750 2    50   Input ~ 0
IN+
Wire Wire Line
	2750 1750 3050 1750
Connection ~ 2750 1750
$Comp
L power:GND #PWR05
U 1 1 60370D59
P 700 1300
F 0 "#PWR05" H 700 1050 50  0001 C CNN
F 1 "GND" H 705 1127 50  0000 C CNN
F 2 "" H 700 1300 50  0001 C CNN
F 3 "" H 700 1300 50  0001 C CNN
	1    700  1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 6037133C
P 1000 1150
F 0 "#PWR06" H 1000 1000 50  0001 C CNN
F 1 "+5V" H 1015 1323 50  0000 C CNN
F 2 "" H 1000 1150 50  0001 C CNN
F 3 "" H 1000 1150 50  0001 C CNN
	1    1000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60371A14
P 700 1150
F 0 "#FLG01" H 700 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 700 1323 50  0000 C CNN
F 2 "" H 700 1150 50  0001 C CNN
F 3 "~" H 700 1150 50  0001 C CNN
	1    700  1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6037313B
P 1000 1300
F 0 "#FLG02" H 1000 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1473 50  0000 C CNN
F 2 "" H 1000 1300 50  0001 C CNN
F 3 "~" H 1000 1300 50  0001 C CNN
	1    1000 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	700  1150 700  1300
Wire Wire Line
	1000 1150 1000 1300
$Comp
L ltc1050:LTC1050 U1
U 1 1 6037ECE3
P 4550 1600
F 0 "U1" H 4650 1675 50  0000 C CNN
F 1 "LTC1050" H 4650 1584 50  0000 C CNN
F 2 "Socket_Arduino_Uno:DIP-8_296" H 4550 1600 50  0001 C CNN
F 3 "" H 4550 1600 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
NoConn ~ 4050 1750
NoConn ~ 5250 2050
NoConn ~ 5250 1750
$Comp
L power:GND #PWR012
U 1 1 603825FF
P 4050 2200
F 0 "#PWR012" H 4050 1950 50  0001 C CNN
F 1 "GND" H 4055 2027 50  0000 C CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2050 4050 2200
Text GLabel 3900 1850 0    50   Input ~ 0
IN-
Wire Wire Line
	3900 1850 4050 1850
Text GLabel 3900 1950 0    50   Input ~ 0
IN+
Wire Wire Line
	4050 1950 3900 1950
$Comp
L Device:R R5
U 1 1 60362ED6
P 1800 1750
F 0 "R5" H 1870 1796 50  0000 L CNN
F 1 "10k" H 1870 1705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 1750 50  0001 C CNN
F 3 "~" H 1800 1750 50  0001 C CNN
	1    1800 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 60390994
P 6000 1200
F 0 "C3" H 6115 1246 50  0000 L CNN
F 1 "100n" H 6115 1155 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 6038 1050 50  0001 C CNN
F 3 "~" H 6000 1200 50  0001 C CNN
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6039196A
P 6000 1400
F 0 "#PWR015" H 6000 1150 50  0001 C CNN
F 1 "GND" H 6005 1227 50  0000 C CNN
F 2 "" H 6000 1400 50  0001 C CNN
F 3 "" H 6000 1400 50  0001 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1350 6000 1400
$Comp
L power:+5V #PWR014
U 1 1 60394A46
P 6000 950
F 0 "#PWR014" H 6000 800 50  0001 C CNN
F 1 "+5V" H 6015 1123 50  0000 C CNN
F 2 "" H 6000 950 50  0001 C CNN
F 3 "" H 6000 950 50  0001 C CNN
	1    6000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 950  6000 1050
Wire Wire Line
	5250 1850 5500 1850
Wire Wire Line
	5500 1850 5500 1050
Wire Wire Line
	5500 1050 6000 1050
$Comp
L Device:R R3
U 1 1 60398E0A
P 6000 2200
F 0 "R3" H 6070 2246 50  0000 L CNN
F 1 "100k" H 6070 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 2200 50  0001 C CNN
F 3 "~" H 6000 2200 50  0001 C CNN
	1    6000 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6039B42C
P 6800 1950
F 0 "R6" V 6593 1950 50  0000 C CNN
F 1 "1k" V 6684 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 1950 50  0001 C CNN
F 3 "~" H 6800 1950 50  0001 C CNN
	1    6800 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 6039BDF1
P 6450 2200
F 0 "C4" H 6565 2246 50  0000 L CNN
F 1 "1u" H 6565 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 6488 2050 50  0001 C CNN
F 3 "~" H 6450 2200 50  0001 C CNN
	1    6450 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6039C8AD
P 6800 2450
F 0 "R2" V 6593 2450 50  0000 C CNN
F 1 "1k" V 6684 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 2450 50  0001 C CNN
F 3 "~" H 6800 2450 50  0001 C CNN
	1    6800 2450
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 6039D980
P 7300 2200
F 0 "C2" H 7415 2246 50  0000 L CNN
F 1 "100n" H 7415 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 7338 2050 50  0001 C CNN
F 3 "~" H 7300 2200 50  0001 C CNN
	1    7300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1950 6000 1950
Wire Wire Line
	6950 1950 7300 1950
Wire Wire Line
	7300 1950 7300 2050
Wire Wire Line
	7300 2350 7300 2450
Wire Wire Line
	7300 2450 6950 2450
Wire Wire Line
	6650 2450 6450 2450
Wire Wire Line
	6000 2450 6000 2350
Wire Wire Line
	6000 2050 6000 1950
Connection ~ 6000 1950
Wire Wire Line
	6000 1950 6450 1950
Wire Wire Line
	6450 1950 6450 2050
Connection ~ 6450 1950
Wire Wire Line
	6450 1950 6650 1950
Wire Wire Line
	6450 2350 6450 2450
Connection ~ 6450 2450
Wire Wire Line
	6450 2450 6000 2450
$Comp
L power:GND #PWR018
U 1 1 603A967D
P 7300 2650
F 0 "#PWR018" H 7300 2400 50  0001 C CNN
F 1 "GND" H 7305 2477 50  0000 C CNN
F 2 "" H 7300 2650 50  0001 C CNN
F 3 "" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2450 7300 2650
Connection ~ 7300 2450
Text GLabel 6450 2700 3    50   Input ~ 0
IN-
Wire Wire Line
	6450 2450 6450 2700
Text GLabel 7550 1950 2    50   Input ~ 0
ADC
Wire Wire Line
	7550 1950 7300 1950
Connection ~ 7300 1950
Wire Notes Line
	1300 2950 8050 2950
Wire Notes Line
	8050 2950 8050 700 
Wire Notes Line
	8050 700  1300 700 
Wire Notes Line
	1300 700  1300 2950
Text Label 1450 850  0    50   ~ 0
Amplificateur
$Comp
L oleo_0_91:OLEO_0_91 U21
U 1 1 603B9BC5
P 2200 4450
F 0 "U21" H 2728 4121 50  0000 L CNN
F 1 "OLEO_0_91" H 2728 4030 50  0000 L CNN
F 2 "Socket_Arduino_Uno:SIP-4" H 2200 4450 50  0001 C CNN
F 3 "" H 2200 4450 50  0001 C CNN
	1    2200 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 603BA6AD
P 1500 5250
F 0 "#PWR09" H 1500 5000 50  0001 C CNN
F 1 "GND" H 1505 5077 50  0000 C CNN
F 2 "" H 1500 5250 50  0001 C CNN
F 3 "" H 1500 5250 50  0001 C CNN
	1    1500 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 603BAFC7
P 1000 4850
F 0 "#PWR07" H 1000 4700 50  0001 C CNN
F 1 "+5V" H 1015 5023 50  0000 C CNN
F 2 "" H 1000 4850 50  0001 C CNN
F 3 "" H 1000 4850 50  0001 C CNN
	1    1000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5050 1500 5050
Wire Wire Line
	1500 5050 1500 5250
Wire Wire Line
	1650 4900 1000 4900
Wire Wire Line
	1000 4900 1000 4850
Text GLabel 1450 4750 0    50   Input ~ 0
SCK
Text GLabel 1450 4600 0    50   Input ~ 0
SDA
Wire Wire Line
	1650 4600 1450 4600
Wire Wire Line
	1650 4750 1450 4750
$Comp
L power:+5V #PWR013
U 1 1 603CFCF2
P 4150 4550
F 0 "#PWR013" H 4150 4400 50  0001 C CNN
F 1 "+5V" H 4165 4723 50  0000 C CNN
F 2 "" H 4150 4550 50  0001 C CNN
F 3 "" H 4150 4550 50  0001 C CNN
	1    4150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 603D0031
P 3800 4750
F 0 "#PWR011" H 3800 4500 50  0001 C CNN
F 1 "GND" H 3805 4577 50  0000 C CNN
F 2 "" H 3800 4750 50  0001 C CNN
F 3 "" H 3800 4750 50  0001 C CNN
	1    3800 4750
	1    0    0    -1  
$EndComp
Text GLabel 4150 4900 0    50   Input ~ 0
RX
Text GLabel 4150 5050 0    50   Input ~ 0
TX
Wire Wire Line
	4400 5050 4150 5050
Wire Wire Line
	4400 4900 4150 4900
Wire Wire Line
	4400 4750 3800 4750
Wire Wire Line
	4400 4600 4150 4600
Wire Wire Line
	4150 4600 4150 4550
$Comp
L bluetooth-hc05:Bluetooth-HC05 U31
U 1 1 603E0F8F
P 4900 4400
F 0 "U31" H 5469 4021 50  0000 L CNN
F 1 "Bluetooth-HC05" H 5469 3930 50  0000 L CNN
F 2 "Socket_Arduino_Uno:SIP-4_bt" H 4900 4400 50  0001 C CNN
F 3 "" H 4900 4400 50  0001 C CNN
	1    4900 4400
	1    0    0    -1  
$EndComp
$Comp
L ky_040:KY_040 U41
U 1 1 603F053B
P 8350 4450
F 0 "U41" H 8978 4096 50  0000 L CNN
F 1 "KY_040" H 8978 4005 50  0000 L CNN
F 2 "Socket_Arduino_Uno:SIP-5" H 8150 4550 50  0001 C CNN
F 3 "" H 8150 4550 50  0001 C CNN
	1    8350 4450
	1    0    0    -1  
$EndComp
Text GLabel 7050 4550 0    50   Input ~ 0
CLK
Text GLabel 7050 4700 0    50   Input ~ 0
DATA
Text GLabel 7050 4850 0    50   Input ~ 0
SWITCH
$Comp
L power:+5V #PWR016
U 1 1 603F1717
P 6500 4950
F 0 "#PWR016" H 6500 4800 50  0001 C CNN
F 1 "+5V" H 6515 5123 50  0000 C CNN
F 2 "" H 6500 4950 50  0001 C CNN
F 3 "" H 6500 4950 50  0001 C CNN
	1    6500 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 603F230E
P 6500 5200
F 0 "#PWR017" H 6500 4950 50  0001 C CNN
F 1 "GND" H 6505 5027 50  0000 C CNN
F 2 "" H 6500 5200 50  0001 C CNN
F 3 "" H 6500 5200 50  0001 C CNN
	1    6500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5150 6500 5150
Wire Wire Line
	6500 5150 6500 5200
Wire Wire Line
	7350 5000 6500 5000
Wire Wire Line
	6500 5000 6500 4950
Wire Wire Line
	7350 4550 7050 4550
Wire Wire Line
	7050 4700 7350 4700
Wire Wire Line
	7350 4850 7050 4850
Wire Notes Line
	9500 4050 9500 5650
Wire Notes Line
	800  5650 800  4050
Text Label 1000 4200 0    50   ~ 0
Module
NoConn ~ 8950 1450
NoConn ~ 9350 1450
NoConn ~ 8650 1800
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 1400
NoConn ~ 10550 1600
NoConn ~ 10550 1700
NoConn ~ 10550 2000
NoConn ~ 10550 2100
NoConn ~ 10550 2300
NoConn ~ 10550 2400
NoConn ~ 10550 2500
NoConn ~ 10550 2900
NoConn ~ 10550 3000
Text GLabel 8750 2500 0    50   Input ~ 0
ADC
Text GLabel 8750 2900 0    50   Input ~ 0
SDA
Text GLabel 8750 3000 0    50   Input ~ 0
SCK
Wire Wire Line
	8750 2500 9400 2500
Wire Wire Line
	8750 2900 9400 2900
Wire Wire Line
	8750 3000 9400 3000
Text GLabel 11150 1800 2    50   Input ~ 0
TX
Text GLabel 11150 1900 2    50   Input ~ 0
RX
Wire Wire Line
	10200 1900 11150 1900
Wire Wire Line
	10200 1800 11150 1800
Text GLabel 11000 2600 2    50   Input ~ 0
DATA
Text GLabel 11000 2700 2    50   Input ~ 0
CLK
Text GLabel 11000 2800 2    50   Input ~ 0
SWITCH
Wire Wire Line
	10200 2600 11000 2600
Wire Wire Line
	10200 2700 11000 2700
Wire Wire Line
	10200 2800 11000 2800
Text GLabel 10950 1300 2    50   Input ~ 0
SDA
Text GLabel 10950 1200 2    50   Input ~ 0
SCK
Wire Wire Line
	10200 1200 10950 1200
Wire Wire Line
	10200 1300 10950 1300
Wire Notes Line
	9500 5650 800  5650
Wire Notes Line
	800  4050 9500 4050
$EndSCHEMATC
