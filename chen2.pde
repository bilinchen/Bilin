 
//This is a static work: my last name
int circleX = 0;
int circleY = 500;

void setup(){
  size(1080,720);
background(255,255,255);
}


void mousePressed(){
  println("Happy Everyday Bilin!");
}

void keyPressed(){
  background(255);
}


void draw(){
  
  //circle
  stroke(0);
  fill(255,180,200,127);
  ellipse(circleX,circleY,100,100);
  
  circleX = circleX + 5;
  
  //bubble
fill(255,180,200,127);
ellipseMode(CENTER);
ellipse(mouseX,mouseY,pmouseX,pmouseY);


//bottom line of C
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
strokeWeight(5);
line(780,60,880,340);
}