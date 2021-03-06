 
//This is a interactive work: my last name

float r;
float g;
float b;
float alpha;

float diam;
float x;
float y;

//setup a background
void setup(){
  size(1080,720);
  background(r,g,b);
  stroke(255);
  line(0,height/2,width,height/2);
  if (mouseY > height/2){
    g = g + 1;
}

else{
  g = g - 1;
}

if(g > 255) {
  g = 255;
  }
  else if (g < 0) {
    g = 0;
  }
}

 void mousePressed(){
  r = random(255);
  g = random(255);
  b = random(255);
  alpha = random(255);
  diam = random(500);
  x = random(width);
  y = random(height);
  noStroke();
  fill(r,g,b,alpha);
  ellipse(mouseX,mouseY,diam,diam);
}

void draw(){
  
//bottom line of C
noStroke();
fill(1);
rect(30,330,200,20);

//top line of C
fill(1);
rect(30,50,200,20);

//left line of C
fill(1);
rect(30,50,60,300);

//left line of H
fill(1);
rect(250,50,60,300);

//middle line of H
rect(280,190,200,20);

//right line of H
fill(1);
rect(420,50,60,300);

//top line of E
fill(1);
rect(500,50,200,20);

//middle line of E
fill(1);
rect(500,190,200,20);

//bottom line of E
fill(1);
rect(500,330,200,20);

//left line of E
fill(1);
rect(500,50,60,300);

//left line of N
fill(1);
rect(720,50,60,300);

//right line of N
fill(1);
rect(880,50,60,300);

//middle line of N
stroke(0);
strokeWeight(5);
line(780,60,880,340);

}

void keyPressed(){
  background(150,230,45);
}