#include <Servo.h>
Servo  myservo;

int posX, posY;

void setup() {
  // put your setup code here, to run once:
  pinMode(A0,INPUT);
  Serial.begin(9600);
  myservo.attach(9);
}

void loop() {
  // put your main code here, to run repeatedly:
  /*Serial.println(analogRead(A0));
  Serial.print(",");
  Serial.println(analogRead(A0));
  */
  int val = map(posX,0,600,0,180);
  myservo.write(val);
  //delay(50);
}

void serialEvent(){
  if (Serial.available())
  {
    posX = Serial.parseInt();
    posY = Serial.parseInt();
  }
  
}

