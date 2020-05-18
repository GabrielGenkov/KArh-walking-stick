#define trigPin 6
#define echoPin 7
#define buzzer 8

long duration;
int distance;

void setup() {
pinMode(trigPin, OUTPUT);
pinMode(echoPin, INPUT);
pinMode(buzzer, OUTPUT);
Serial.begin(9600);
}

void loop() {
digitalWrite(trigPin, LOW);;
digitalWrite(trigPin, HIGH);
digitalWrite(trigPin, LOW);


duration = pulseIn(echoPin, HIGH);
distance= duration*0.034/2;
Serial.print("Distance: "); // Prints string "Distance" on the LCD
Serial.print(distance); // Prints the distance value from the sensor
Serial.print(" cm\n");


if(distance >= 200){
    tone(buzzer, 5000, 125); 
    //noTone(buzzer);
    delay(5000);
}
else if(distance >= 150 && distance < 200){
    tone(buzzer, 5000, 125); 
    //noTone(buzzer);
    delay(4000);
    
}
else if(distance >= 100 && distance < 150){
    tone(buzzer, 5000, 125);
    //noTone(buzzer);
    delay(3000);
}
else if(distance >= 50 && distance < 100){
   tone(buzzer, 5000, 125);
    //noTone(buzzer);
    delay(2000);
}
else if(distance >= 40 && distance < 50){
    tone(buzzer, 5000, 125);  
    //noTone(buzzer);
    delay(1500);
}
else if(distance >= 30 && distance < 40){
    tone(buzzer, 5000, 125);
      //noTone(buzzer);
      delay(1000);
}
else if(distance >= 20 && distance < 30){
      tone(buzzer, 5000, 125);  
      //noTone(buzzer);
      delay(500);
}
else if(distance >= 10 && distance < 20){
     tone(buzzer, 5000, 125); 
      //noTone(buzzer);
      delay(250);
}
else if(distance < 10){
      tone(buzzer, 5000, 125);  
      //noTone(buzzer);
      delay(125);
}

}
