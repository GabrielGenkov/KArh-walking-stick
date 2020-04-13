#define trigPin 6
#define echoPin 7
#define motorPin 3

long duration;
int distance;

void setup() {
pinMode(trigPin, OUTPUT);
pinMode(echoPin, INPUT);
pinMode(motorPin, OUTPUT);
Serial.begin(9600);
}

void loop() {
digitalWrite(trigPin, LOW);
digitalWrite(trigPin, HIGH);
digitalWrite(trigPin, LOW);


duration = pulseIn(echoPin, HIGH);
distance= duration*0.034/2;
Serial.print("Distance: "); // Prints string "Distance" on the LCD
Serial.print(distance); // Prints the distance value from the sensor
Serial.print(" cm\n");


if(distance >= 200){
    digitalWrite(motorPin, HIGH);
  delay(5000);  
      digitalWrite(motorPin, LOW);
}
else if(distance >= 150 && distance < 200){
    digitalWrite(motorPin, HIGH);
  delay(4000);
      digitalWrite(motorPin, LOW);
    
}
else if(distance >= 100 && distance < 150){
    digitalWrite(motorPin, HIGH);
  delay(3000);
     digitalWrite(motorPin, LOW); 
}
else if(distance >= 50 && distance < 100){
    digitalWrite(motorPin, HIGH);
  delay(2000); 
      digitalWrite(motorPin, LOW);
}
else if(distance >= 40 && distance < 50){
    digitalWrite(motorPin, HIGH);
  delay(1500); 
      digitalWrite(motorPin, LOW);
}
else if(distance >= 30 && distance < 40){
    digitalWrite(motorPin, HIGH);
  delay(1000); 
      digitalWrite(motorPin, LOW);
}
else if(distance >= 20 && distance < 30){
      digitalWrite(motorPin, HIGH);
  //tone(buzzer, 1000, 500);
  delay(500); 
      digitalWrite(motorPin, LOW);
}
else if(distance >= 10 && distance < 20){
      digitalWrite(motorPin, HIGH);
  delay(250); 
      digitalWrite(motorPin, LOW);
}
else if(distance < 10){
      digitalWrite(motorPin, HIGH);
  delay(125); 
      digitalWrite(motorPin, LOW);
}

}
