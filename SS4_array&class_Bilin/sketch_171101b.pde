String state = "start";
//from demo on arrays
//load images into an array and display random image on keyPress()
PImage[] me= new PImage [10];  // creates new PImage array called me with 10 positions
Picture myPicture; // Declare pic object as a globle variable.

Sun mySun;// Declare sun object as a globle variable.
Sun[]suns= new Sun[100];

int whichMe=0; // creates variable for tracking position in me array

void setup(){
size(600,600);  
//loading each image individually
//see Shiffman section 15-4 for good short cuts
me[0]= loadImage ("1.jpg");
me[1]= loadImage ("2.jpg");
me[2]= loadImage ("3.jpg");
me[3]= loadImage ("4.jpg");
me[4]= loadImage ("5.jpg");
me[5]= loadImage ("6.jpg");
me[6]= loadImage ("7.jpg");
me[7]= loadImage ("8.jpg");
me[8]= loadImage ("9.jpg");
me[9]= loadImage ("10.jpg"); 

// Initialize pic object in setup() by calling constructor.
myPicture = new Picture();
mySun = new Sun();
}
 
 void draw(){
   if(state.equals("start")){
  background(0);
  image(me[whichMe],0,0);
}else if(state.equals("second")){
  background(0);
  bilin();
}else if(state.equals("third")){
  background(0);
  chen();
}
 }
 
 void bilin(){
   background(255);
   // Operate pic object in draw() by calling 
  // object methods using the dot syntax.
  myPicture.move(); 
  myPicture.display();
}

void chen(){
  background(255);
  for(int i=0; i<suns.length; i++){
  mySun.move();
  mySun.display();
  mySun.grow();
  }
}


 
 void mousePressed(){
   if (state.equals("start")){
     state = "second";
   }else if(state.equals("second")){
     state = "third";
   }else if(state.equals("third")){
     state = "start";
 }
 }


void keyPressed(){
  whichMe=int(random(0,10));

  }