#include <Wire.h>
#include "BH1750.h"
#define led 5

BH1750 lightMeter;
 
 
void setup(){
  Serial.begin(9600);
  pinMode(led, OUTPUT);
  lightMeter.begin();
}
 
 
void loop(){
  uint16_t lux = lightMeter.readLightLevel();
  if(lux < 75){
    digitalWrite(led, HIGH);
    
  }
  else{
    digitalWrite(led, LOW);
  }
  Serial.print("Light: ");
  Serial.print(lux);
  Serial.println(" lx");
  delay(1000);
}
