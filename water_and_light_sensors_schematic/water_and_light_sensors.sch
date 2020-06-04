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
L power:+9V #PWR?
U 1 1 5ED94867
P 2300 1250
F 0 "#PWR?" H 2300 1100 50  0001 C CNN
F 1 "+9V" H 2315 1423 50  0000 C CNN
F 2 "" H 2300 1250 50  0001 C CNN
F 3 "" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
$Comp
L My_lib:Arduino_Nano U?
U 1 1 5EDA5582
P 1850 1650
F 0 "U?" H 2825 1815 50  0000 C CNN
F 1 "Arduino_Nano" H 2825 1724 50  0000 C CNN
F 2 "" H 2850 1600 50  0001 C CNN
F 3 "" H 2850 1600 50  0001 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1250 2300 1900
$Comp
L pspice:0 #GND?
U 1 1 5EDABEF2
P 1850 2100
F 0 "#GND?" H 1850 2000 50  0001 C CNN
F 1 "0" H 1850 2189 50  0000 C CNN
F 2 "" H 1850 2100 50  0001 C CNN
F 3 "~" H 1850 2100 50  0001 C CNN
	1    1850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2100 1850 2000
Wire Wire Line
	1850 2000 2300 2000
$Comp
L My_lib:BH1750 U?
U 1 1 5EDB16AB
P 2150 4250
F 0 "U?" H 2075 4465 50  0000 C CNN
F 1 "BH1750" H 2075 4374 50  0000 C CNN
F 2 "" H 2150 4250 50  0001 C CNN
F 3 "" H 2150 4250 50  0001 C CNN
	1    2150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2100 1950 2100
Wire Wire Line
	1950 2100 1950 2400
Wire Wire Line
	1950 3800 1700 3800
Wire Wire Line
	1700 3800 1700 4400
Wire Wire Line
	2450 4400 2450 3500
Wire Wire Line
	2450 3500 2100 3500
Wire Wire Line
	2100 3500 2100 2700
Wire Wire Line
	2100 2700 2300 2700
Wire Wire Line
	2450 4500 2650 4500
Wire Wire Line
	2650 4500 2650 3400
Wire Wire Line
	2650 3400 2150 3400
Wire Wire Line
	2150 3400 2150 2800
Wire Wire Line
	2150 2800 2300 2800
$Comp
L pspice:0 #GND?
U 1 1 5EDB4D89
P 1400 4950
F 0 "#GND?" H 1400 4850 50  0001 C CNN
F 1 "0" H 1400 5039 50  0000 C CNN
F 2 "" H 1400 4950 50  0001 C CNN
F 3 "~" H 1400 4950 50  0001 C CNN
	1    1400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4500 1400 4500
Wire Wire Line
	1400 4500 1400 4950
$Comp
L Device:LED D?
U 1 1 5EDB7DEC
P 4050 4150
F 0 "D?" H 4043 4367 50  0000 C CNN
F 1 "LED" H 4043 4276 50  0000 C CNN
F 2 "" H 4050 4150 50  0001 C CNN
F 3 "~" H 4050 4150 50  0001 C CNN
	1    4050 4150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5EDBBD65
P 4050 4500
F 0 "D?" H 4043 4717 50  0000 C CNN
F 1 "LED" H 4043 4626 50  0000 C CNN
F 2 "" H 4050 4500 50  0001 C CNN
F 3 "~" H 4050 4500 50  0001 C CNN
	1    4050 4500
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5EDBC199
P 4050 4850
F 0 "D?" H 4043 5067 50  0000 C CNN
F 1 "LED" H 4043 4976 50  0000 C CNN
F 2 "" H 4050 4850 50  0001 C CNN
F 3 "~" H 4050 4850 50  0001 C CNN
	1    4050 4850
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5EDBC4F4
P 4050 5300
F 0 "D?" H 4043 5517 50  0000 C CNN
F 1 "LED" H 4043 5426 50  0000 C CNN
F 2 "" H 4050 5300 50  0001 C CNN
F 3 "~" H 4050 5300 50  0001 C CNN
	1    4050 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EDBC895
P 3300 4250
F 0 "R?" H 3370 4296 50  0000 L CNN
F 1 "R" H 3370 4205 50  0000 L CNN
F 2 "" V 3230 4250 50  0001 C CNN
F 3 "~" H 3300 4250 50  0001 C CNN
	1    3300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2400 950  2400
Wire Wire Line
	950  2400 950  5350
Connection ~ 1950 2400
Wire Wire Line
	1950 2400 1950 3800
Wire Wire Line
	3900 4100 3900 4150
Wire Wire Line
	3900 4150 3900 4500
Connection ~ 3900 4150
Wire Wire Line
	3900 4850 3900 4500
Connection ~ 3900 4500
Wire Wire Line
	3900 4850 3900 5300
Connection ~ 3900 4850
$Comp
L pspice:0 #GND?
U 1 1 5EDBFFE2
P 4900 4700
F 0 "#GND?" H 4900 4600 50  0001 C CNN
F 1 "0" H 4900 4789 50  0000 C CNN
F 2 "" H 4900 4700 50  0001 C CNN
F 3 "~" H 4900 4700 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4150 4550 4150
Wire Wire Line
	4550 4150 4550 4500
Wire Wire Line
	4550 5300 4200 5300
Wire Wire Line
	4200 4850 4550 4850
Connection ~ 4550 4850
Wire Wire Line
	4550 4850 4550 5300
Wire Wire Line
	4200 4500 4550 4500
Connection ~ 4550 4500
Wire Wire Line
	4550 4500 4550 4600
Wire Wire Line
	4550 4600 4900 4600
Wire Wire Line
	4900 4600 4900 4700
Connection ~ 4550 4600
Wire Wire Line
	4550 4600 4550 4850
Wire Wire Line
	3300 4100 3900 4100
$Comp
L My_lib:Water_sensor U?
U 1 1 5EDC56D1
P 6750 4500
F 0 "U?" H 6750 4715 50  0000 C CNN
F 1 "Water_sensor" H 6750 4624 50  0000 C CNN
F 2 "" H 6750 4500 50  0001 C CNN
F 3 "" H 6750 4500 50  0001 C CNN
	1    6750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5350 2900 6150
Wire Wire Line
	2900 6150 4800 6150
Wire Wire Line
	6050 6150 6050 4600
Wire Wire Line
	6050 4600 6350 4600
Wire Wire Line
	950  5350 2900 5350
$Comp
L pspice:0 #GND?
U 1 1 5EDC933C
P 6300 5250
F 0 "#GND?" H 6300 5150 50  0001 C CNN
F 1 "0" H 6300 5339 50  0000 C CNN
F 2 "" H 6300 5250 50  0001 C CNN
F 3 "~" H 6300 5250 50  0001 C CNN
	1    6300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5250 6300 4700
Wire Wire Line
	6300 4700 6350 4700
Wire Wire Line
	2300 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3350
Wire Wire Line
	2200 3350 2950 3350
Wire Wire Line
	2950 3350 2950 3850
Wire Wire Line
	2950 3850 7150 3850
Wire Wire Line
	7150 3850 7150 4600
$Comp
L My_lib:Vibration_motor U?
U 1 1 5EDCE8E8
P 8600 4650
F 0 "U?" H 8600 4865 50  0000 C CNN
F 1 "Vibration_motor" H 8600 4774 50  0000 C CNN
F 2 "" H 8600 4650 50  0001 C CNN
F 3 "" H 8600 4650 50  0001 C CNN
	1    8600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6150 4800 6400
Wire Wire Line
	4800 6400 6950 6400
Wire Wire Line
	6950 6400 6950 5350
Wire Wire Line
	6950 5350 7900 5350
Wire Wire Line
	7900 5350 7900 4750
Wire Wire Line
	7900 4750 8150 4750
Connection ~ 4800 6150
Wire Wire Line
	4800 6150 6050 6150
$Comp
L pspice:0 #GND?
U 1 1 5EDD1302
P 8150 5400
F 0 "#GND?" H 8150 5300 50  0001 C CNN
F 1 "0" H 8150 5489 50  0000 C CNN
F 2 "" H 8150 5400 50  0001 C CNN
F 3 "~" H 8150 5400 50  0001 C CNN
	1    8150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5400 8150 4850
Wire Wire Line
	9050 4750 9050 2000
Wire Wire Line
	9050 2000 3350 2000
Wire Wire Line
	3300 4400 3000 4400
Wire Wire Line
	3000 4400 3000 4000
Wire Wire Line
	3000 4000 3600 4000
Wire Wire Line
	3600 4000 3600 2100
Wire Wire Line
	3600 2100 3350 2100
$EndSCHEMATC
