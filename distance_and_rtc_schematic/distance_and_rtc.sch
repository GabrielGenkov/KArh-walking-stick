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
L My_lib2:Arduino_Nano U?
U 1 1 5ED94FA2
P 3000 1800
F 0 "U?" H 2975 2015 50  0000 C CNN
F 1 "Arduino_Nano" H 2975 1924 50  0000 C CNN
F 2 "" H 3000 1800 50  0001 C CNN
F 3 "" H 3000 1800 50  0001 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR?
U 1 1 5ED95C78
P 2100 1250
F 0 "#PWR?" H 2100 1100 50  0001 C CNN
F 1 "+9V" H 2115 1423 50  0000 C CNN
F 2 "" H 2100 1250 50  0001 C CNN
F 3 "" H 2100 1250 50  0001 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1250 2100 1900
Wire Wire Line
	2100 1900 2550 1900
$Comp
L pspice:0 #GND?
U 1 1 5ED96B65
P 1450 2100
F 0 "#GND?" H 1450 2000 50  0001 C CNN
F 1 "0" H 1450 2189 50  0000 C CNN
F 2 "" H 1450 2100 50  0001 C CNN
F 3 "~" H 1450 2100 50  0001 C CNN
	1    1450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2100 1450 2000
Wire Wire Line
	1450 2000 2550 2000
$Comp
L My_lib2:HC-SR04 U?
U 1 1 5ED97B6C
P 2900 4650
F 0 "U?" H 2900 4865 50  0000 C CNN
F 1 "HC-SR04" H 2900 4774 50  0000 C CNN
F 2 "" H 2900 4650 50  0001 C CNN
F 3 "" H 2900 4650 50  0001 C CNN
	1    2900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2100 2100 2100
Wire Wire Line
	2100 2100 2100 4500
Wire Wire Line
	2100 4750 2550 4750
$Comp
L pspice:0 #GND?
U 1 1 5ED986A0
P 2100 5100
F 0 "#GND?" H 2100 5000 50  0001 C CNN
F 1 "0" H 2100 5189 50  0000 C CNN
F 2 "" H 2100 5100 50  0001 C CNN
F 3 "~" H 2100 5100 50  0001 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4850 2100 4850
Wire Wire Line
	2100 4850 2100 5100
Wire Wire Line
	3250 4750 3700 4750
Wire Wire Line
	3700 4750 3700 2500
Wire Wire Line
	3700 2500 3400 2500
Wire Wire Line
	3250 4850 3600 4850
Wire Wire Line
	3600 4850 3600 2600
Wire Wire Line
	3600 2600 3400 2600
$Comp
L My_lib2:Beep_V_2.0 U?
U 1 1 5ED9A86C
P 3150 5900
F 0 "U?" H 3150 6115 50  0000 C CNN
F 1 "Beep_V_2.0" H 3150 6024 50  0000 C CNN
F 2 "" H 3150 5900 50  0001 C CNN
F 3 "" H 3150 5900 50  0001 C CNN
	1    3150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4500 1650 4500
Wire Wire Line
	1650 4500 1650 6000
Wire Wire Line
	1650 6000 1950 6000
Connection ~ 2100 4500
Wire Wire Line
	2100 4500 2100 4750
Wire Wire Line
	3500 6050 3800 6050
Wire Wire Line
	3800 6050 3800 2400
Wire Wire Line
	3800 2400 3400 2400
$Comp
L pspice:0 #GND?
U 1 1 5ED9C313
P 2600 6300
F 0 "#GND?" H 2600 6200 50  0001 C CNN
F 1 "0" H 2600 6389 50  0000 C CNN
F 2 "" H 2600 6300 50  0001 C CNN
F 3 "~" H 2600 6300 50  0001 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6300 2600 6100
Wire Wire Line
	2600 6100 2800 6100
$Comp
L My_lib2:RTC U?
U 1 1 5ED9DC07
P 5650 5350
F 0 "U?" H 5650 5565 50  0000 C CNN
F 1 "RTC" H 5650 5474 50  0000 C CNN
F 2 "" H 5650 5350 50  0001 C CNN
F 3 "" H 5650 5350 50  0001 C CNN
	1    5650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6000 1950 6550
Wire Wire Line
	1950 6550 4850 6550
Wire Wire Line
	4850 6550 4850 6400
Wire Wire Line
	4850 5450 5300 5450
Connection ~ 1950 6000
Wire Wire Line
	1950 6000 2800 6000
$Comp
L pspice:0 #GND?
U 1 1 5ED9F23E
P 5150 5900
F 0 "#GND?" H 5150 5800 50  0001 C CNN
F 1 "0" H 5150 5989 50  0000 C CNN
F 2 "" H 5150 5900 50  0001 C CNN
F 3 "~" H 5150 5900 50  0001 C CNN
	1    5150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5900 5150 5550
Wire Wire Line
	5150 5550 5300 5550
Wire Wire Line
	6000 5450 6000 3750
Wire Wire Line
	6000 3750 2300 3750
Wire Wire Line
	2300 3750 2300 2700
Wire Wire Line
	2300 2700 2550 2700
Wire Wire Line
	6000 5550 6350 5550
Wire Wire Line
	6350 5550 6350 3850
Wire Wire Line
	6350 3850 2400 3850
Wire Wire Line
	2400 3850 2400 2800
Wire Wire Line
	2400 2800 2550 2800
$Comp
L My_lib2:Beep_V_2.0 U?
U 1 1 5EDA3805
P 7950 3200
F 0 "U?" H 7950 3415 50  0000 C CNN
F 1 "Beep_V_2.0" H 7950 3324 50  0000 C CNN
F 2 "" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0001 C CNN
	1    7950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6400 7150 6400
Wire Wire Line
	7150 6400 7150 3300
Wire Wire Line
	7150 3300 7600 3300
Connection ~ 4850 6400
Wire Wire Line
	4850 6400 4850 5450
$Comp
L pspice:0 #GND?
U 1 1 5EDA51B2
P 7400 3700
F 0 "#GND?" H 7400 3600 50  0001 C CNN
F 1 "0" H 7400 3789 50  0000 C CNN
F 2 "" H 7400 3700 50  0001 C CNN
F 3 "~" H 7400 3700 50  0001 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3700 7400 3400
Wire Wire Line
	7400 3400 7600 3400
Wire Wire Line
	8300 3350 8300 2450
Wire Wire Line
	8300 2450 4250 2450
Wire Wire Line
	4250 2450 4250 3000
Wire Wire Line
	4250 3000 3400 3000
$EndSCHEMATC
