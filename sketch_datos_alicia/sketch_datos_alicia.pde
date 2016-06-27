BufferedReader reader;
String line;
PFont font;
int x1 =0, y1 =0;
int R=1;//6371;//radio de la tierra en km

void setup() {
  // Open the file from the createWriter() example
  
  font = loadFont("Vivaldii-48.vlw");
  reader = createReader("Qdata.txt"); 
  size(800, 800); 
  background(255);
  smooth(8);
}

void draw() {
  frameRate(15);
  strokeWeight(1);
  noStroke();
  fill(0);
  line = getLine(reader);
  if (line == null) {
    // detiene el loop
    noLoop();
  } 
  else {
    //divide la linea en elementos separados por coma
    textFont(font, 12);
    String[] pieces = split(line, ',');
    float x = float(pieces[0]);
    float y = float(pieces[1]);    
    float speed =float(pieces[2]);
    float air= float(pieces[3]);
    noStroke();
    //background(255);
    fill(231, 248, 154, 200);
    x1 = x1+2;
    y1= y1+ int(speed/2);
    if (air >150){
       fill(100, 150, 255, 200);
       ellipse(x1, y1, air, air);   
       fill(100);
       textSize(50);
       text("zona peligrosa", x1,y1);
       
    }
    else{
      fill(80, 0, 80, 80);
      ellipse(x1, y1, air, air);   
    }
    fill(0);
    textSize(15);
    strokeWeight(100);

  }
} 

//geographic to cartessian
float toX(float lat, float lon) {
  float x = R * cos(lat) * cos(lon);
  return x;
}

float toY(float lat, float lon) {
  float y = R * cos(lat) * sin(lon);
  return y;
}

//get each file line
String getLine(BufferedReader r){
  String l;
  try {
   l = r.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    l = null;
  } 
  return l;
}