#include <Wire.h>
#include "BH1750.h"
#define motorPin 3

BH1750 lightMeter;
 
 
void setup(){
  Serial.begin(9600);
  pinMode(motorPin, OUTPUT);
  lightMeter.begin();
}
 
 
void loop(){
  uint16_t lux = lightMeter.readLightLevel();
  if(lux < 50){
    digitalWrite(motorPin, HIGH);
  }
  else{
    digitalWrite(motorPin, LOW);
  }
  Serial.print("Light: ");
  Serial.print(lux);
  Serial.println(" lx");
  delay(1000);
}
