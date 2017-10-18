String state = "the first";
PImage img;
PImage img2;
PImage img3;



void setup(){
  size(341,229);
  background(0);
  img = loadImage("2.jpeg");
  img2 = loadImage("3.jpeg");
  img3 = loadImage("hua.jpeg");
}

void draw(){
  textSize(18);
  textAlign(CENTER);
  if (state.equals("the first")) {
    background(0);
    image(img3,0,0);
    text("welcome to hangzhou", width/2, height/2);
  } else if(state.equals("the second")) {
    background(0);
    image(img,0,0);
    fill(30,200,30);
    text("this is water lily", width/2, height/2);
    text("a famous flower in hangzhou ", width/2, height/2+50);
  } else if(state.equals("the third")){
    background(255,0,0);
    image(img2,0,0);
    text("the flower is growing in summer", width/2, height/2);
  }
}


void mousePressed(){
  if (state.equals("the first")) {
    state = "the second";
  }
  else if (state.equals("the second")){
    state = "the third";
  }
  else if(state.equals("the third")){
    state = "the first";
  }
}