#include <Wire.h>
#include "BH1750.h"
#define led 5
#define motorPin 6
const int read = A1;
int value;

BH1750 lightMeter;
 
 
void setup(){
  pinMode(led, OUTPUT);
  pinMode(motorPin, OUTPUT);
  lightMeter.begin();
  //Serial.begin(9600);
}
 
 
void loop(){
  value = analogRead(read);
    if (value>480){ 
    digitalWrite(motorPin, HIGH);
  }
  else{
    digitalWrite(motorPin, LOW);
  }
  
  uint16_t lux = lightMeter.readLightLevel();
  if(lux < 75){
    digitalWrite(led, HIGH);
  }
  else{
    digitalWrite(led, LOW);
  }
  /*Serial.print("Light: ");
  Serial.print(lux);
  Serial.println(" lx");
  delay(1000);*/
}
