#include <Wire.h>
#define DS3231_I2C_ADDRESS 0x68
#define buzzer 2
int index;
int first = 0, second = 0, third = 0, fourth = 0;

#define trigPin 6
#define echoPin 7
#define buzzer 8

long duration;
int distance;

// Convert normal decimal numbers to binary coded decimal
byte decToBcd(byte val)
{
  return( (val/10*16) + (val%10) );
}
// Convert binary coded decimal to normal decimal numbers
byte bcdToDec(byte val)
{
  return( (val/16*10) + (val%16) );
}
void setup()
{
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(buzzer, OUTPUT);
  Wire.begin();
  Serial.begin(9600);
  pinMode(buzzer, OUTPUT);
  // set the initial time here:
  // DS3231 seconds, minutes, hours, day, date, month, year
   setDS3231time(50,29,19,2,18,05,20);
   Serial.begin(9600);
}
void setDS3231time(byte second, byte minute, byte hour, byte dayOfWeek, byte
dayOfMonth, byte month, byte year)
{
  // sets time and date data to DS3231
  Wire.beginTransmission(DS3231_I2C_ADDRESS);
  Wire.write(0); // set next input to start at the seconds register
  Wire.write(decToBcd(second)); // set seconds
  Wire.write(decToBcd(minute)); // set minutes
  Wire.write(decToBcd(hour)); // set hours
  Wire.write(decToBcd(dayOfWeek)); // set day of week (1=Sunday, 7=Saturday)
  Wire.write(decToBcd(dayOfMonth)); // set date (1 to 31)
  Wire.write(decToBcd(month)); // set month
  Wire.write(decToBcd(year)); // set year (0 to 99)
  Wire.endTransmission();
}
void readDS3231time(byte *second, byte *minute, byte *hour, byte *dayOfWeek, byte *dayOfMonth, byte *month, byte *year)
{
  Wire.beginTransmission(DS3231_I2C_ADDRESS);
  Wire.write(0); 
  Wire.endTransmission();
  Wire.requestFrom(DS3231_I2C_ADDRESS, 7);
  *second = bcdToDec(Wire.read() & 0x7f);
  *minute = bcdToDec(Wire.read());
  *hour = bcdToDec(Wire.read() & 0x3f);
  *dayOfWeek = bcdToDec(Wire.read());
  *dayOfMonth = bcdToDec(Wire.read());
  *month = bcdToDec(Wire.read());
  *year = bcdToDec(Wire.read());
}
void displayTime()
{
  byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;

  readDS3231time(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month,
  &year);

  Serial.print(hour, DEC);

  Serial.print(":");
  if (minute<10)
  {
    Serial.print("0");
  }
  Serial.print(minute, DEC);
  index = (int)minute;
  Serial.print(":");
  if (second<10)
  {
    Serial.print("0");
  }
  Serial.print(second, DEC);
  Serial.print(" ");
  Serial.print(dayOfMonth, DEC);
  Serial.print("/");
  Serial.print(month, DEC);
  Serial.print("/");
  Serial.print(year, DEC);
  Serial.print(" Day of week: ");
  switch(dayOfWeek){
  case 1:
    Serial.println("Sunday");
    break;
  case 2:
    Serial.println("Monday");
    break;
  case 3:
    Serial.println("Tuesday");
    break;
  case 4:
    Serial.println("Wednesday");
    break;
  case 5:
    Serial.println("Thursday");
    break;
  case 6:
    Serial.println("Friday");
    break;
  case 7:
    Serial.println("Saturday");
    break;
  }
}
void loop()
{
  
  displayTime(); 
  if(index == 0 && first == 0){
    fourth = 0;
    first = 1;
    tone(buzzer, 4000, 500);
    delay(1000);   
  }
  else if(index == 15 && second == 0){
      second = 1;
      tone(buzzer, 4000, 500);   
      delay(1000);
      tone(buzzer, 4000, 500);
      delay(1000);
  }
  else if(index == 30 && third == 0){
      third = 1;
      tone(buzzer, 4000, 500);   
      delay(1000);
      tone(buzzer, 4000, 500);
      delay(1000);
      tone(buzzer, 4000, 500);
      delay(1000);
  }
  else if(index == 45 && fourth == 0){
      first = 1;
      second = 1;
      third = 1;
      fourth = 1;
      tone(buzzer, 4000, 500);   
      delay(1000);
      tone(buzzer, 4000, 500);
      delay(1000);
      tone(buzzer, 4000, 500);
      delay(1000);
      tone(buzzer, 4000, 500);
      delay(1000);
  }
  else{
    digitalWrite(trigPin, LOW);;
    digitalWrite(trigPin, HIGH);
    digitalWrite(trigPin, LOW);
    
    
    duration = pulseIn(echoPin, HIGH);
    distance = duration*0.034/2;
    
    
    if(distance >= 200){
        tone(buzzer, 5000, 125); 
        delay(5000);
    }
    else if(distance >= 150 && distance < 200){
        tone(buzzer, 5000, 125); 
        delay(4000);
    }
    else if(distance >= 100 && distance < 150){
        tone(buzzer, 5000, 125);
        delay(3000);
    }
    else if(distance >= 50 && distance < 100){
       tone(buzzer, 5000, 125);
        delay(2000);
    }
    else if(distance >= 40 && distance < 50){
        tone(buzzer, 5000, 125);  
        delay(1500);
    }
    else if(distance >= 30 && distance < 40){
        tone(buzzer, 5000, 125);
          delay(1000);
    }
    else if(distance >= 20 && distance < 30){
          tone(buzzer, 5000, 125);  
          delay(500);
    }
    else if(distance >= 10 && distance < 20){
         tone(buzzer, 5000, 125); 
          delay(250);
    }
    else if(distance < 10){
          tone(buzzer, 5000, 125);  
          delay(125);
    }
  }
}
