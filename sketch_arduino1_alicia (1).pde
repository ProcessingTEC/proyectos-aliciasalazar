import processing.serial.*;
Serial port;
String data;
float[] val = new float[2];
float x1 = 0;
float x2 = 0;
float y1 = 400;
float y2 = 10;
void setup(){
  println(Serial.list());
  port = new Serial(this, "COM8",9600);
  port.bufferUntil('\n');
  size(600,600);
  background(255);
}

void draw(){
  //strokeWeight(2);
 /* stroke(random(100,200));
  fill(val[0]);
  x2 += 1;
  x1 += 1;
  //ellipse(width/2, height/2, map(val[0],0,300,0,200), map(val[1],0,300,0,200));
  
  line(x1,y1,x2,val[0]);
  */
 
  String datos = nf(mouseX)+","+nf(mouseY)+"\n"; 
  port.write(datos); /// enviar string
  background(255);
  textSize(32);
  fill(0);
  text(datos,10,20);
  
}
/*
void serialEvent(Serial port)
{
  data= port.readString();
  //String[] list =  split(data,",");
  val[0]= float(data);//float(list[0]);

  //val[1]= float(list[1]);
}*/