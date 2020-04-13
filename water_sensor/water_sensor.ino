
#define motorPin 3
const int read = A1;
int value;     		

void setup()
{
  pinMode(motorPin, OUTPUT);
  Serial.begin(9600);
	
}

void loop()
{
  value = analogRead(read); //Read data from analog pin and store it to value variable
  
  if (value>480){ 
    digitalWrite(motorPin, HIGH);
  }
  else{
    digitalWrite(motorPin, LOW);
  }
  
}

