
PImage img;

void setup(){
  size(800,800);
  smooth(100);
  background(10);

}

void draw(){

  frameRate(30);
  strokeWeight(80);
  float col = random(200,255);
  fill(col);
  ellipse(mouseX, mouseY,50,70);
  ellipse(pmouseX-10, pmouseY-60,65,70);
  fill(col-30);
  ellipse(mouseX+25, mouseY-40,20,70);
  fill(col);
  ellipse(mouseX+65, mouseY-60,65,70);
  ellipse(mouseX+58, mouseY-5,50,70); 
  stroke(random(255),random(255),random(255),15);
  
  img = loadImage("flowers.jpg");
  img.resize(900, 200); 
  tint(255, 10);
  image(img, 0, 600);
  
  //filter(BLUR);

   
}