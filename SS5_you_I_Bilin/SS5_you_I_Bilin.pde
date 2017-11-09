//import the video processing library
import processing.video.*;

//declare the capture object
Capture video;

import processing.video.*;
Movie myMovie;


void setup(){
  //initialize the Capture object
  size(1000,600,P3D);
  video = new Capture(this,500,300);
  //start the capture process
  video.start();//capture right in setup
  //start() is its own method
  
  myMovie = new Movie(this, "introduction.mov");
  myMovie.loop();
}
  
  //read the image from the camera
  void captureEvent(Capture video){ 
    video.read();
    //read the image from the camera
  }
    
    
  void draw(){
    background(255);
    tint(mouseX,mouseY,255);//A video can be 
    //it also can be moved, rotated, and sized
    translate(width/2,height/2,-50);
    imageMode(CENTER);
    rotate(PI/8);
    image(video,0,0,mouseX,mouseY);
    tint(255, 20);
  image(myMovie, 0, 0);

  }
 // Called every time a new frame is available to read 
  void movieEvent(Movie m) {
  m.read();}