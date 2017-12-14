import processing.sound.*;

import processing.video.*;

String statePrevious;
  
String state = "start";

PImage shan,huahua,shan1,hang,zhou,ni,hao,cai,rou,xie,zhunao,fengjing,hehua,guihua,yinghua,shi,xiaohua;
int y;
int x;
Movie hangzhou2;


void setup(){
  size(1000,300);
  background(0);
  shan = loadImage("s0.jpg");
  shan1=loadImage("111.png");
  hang = loadImage("s1.jpg");
  zhou = loadImage("s2.jpg");
  ni = loadImage("s3.jpg");
  hao = loadImage("s4.jpg");
  cai = loadImage("11.png");
  rou = loadImage("12.png");
  xie = loadImage("13.png");
  zhunao = loadImage("14.png");
  fengjing = loadImage("21.jpg");
  hehua = loadImage("31.png");
  guihua = loadImage("32.png");
  yinghua = loadImage("33.png");
  xiaohua = loadImage("42.png");
  huahua = loadImage("123.png");
  
  hangzhou2 = new Movie(this, "999.mp4");

  
}

void draw(){
  imageMode(CORNER);
  if(state.equals("start")){
    tint(255);
    image(shan,0,0);
        tint(255,80);
    imageMode(CENTER);
    image(shan1,mouseX+150,mouseY+50);
    tint(255,50);
    imageMode(CENTER);
    image(shan1,mouseX+300,mouseY);
        tint(255,20);
    imageMode(CENTER);
    image(shan1,mouseX+450,mouseY-50);
    tint(255,125);
    imageMode(CENTER);
    image(shan1,mouseX,mouseY);
    fill(0);
    textSize(36);
    textAlign(CENTER);
    text("welcome",mouseX,mouseY);
    
    
  }else if(state.equals("home")){
    background(0);
  if (mouseX > 0 && mouseX < width/4){
    tint(255);
    image(hang,0,0,250,300);
    tint(255,127);
    image(zhou,250,0,250,300);
    image(ni,500,0,250,300);
 image(hao,750,0,250,300);
  }else if (mouseX > width/4 && mouseX < 2*width/4){
    tint(255);
    image(zhou,250,0,250,300);
    tint(255,127);
    image(hang,0,0,250,300);
    image(ni,500,0,250,300);
   image(hao,750,0,250,300);
  }else if (mouseX > 2*width/4 && mouseX < 3*width/4){
    tint(255);
    image(ni,500,0,250,300);
    tint(255,127);
    image(hang,0,0,250,300);
    image(zhou,250,0,250,300);
    image(hao,750,0,250,300);
    
  }else if (mouseX > 3*width/4 && mouseX < width){
    tint(255);
    image(hao,750,0,250,300);
    tint(255,127);
    image(hang,0,0,250,300);
    image(zhou,250,0,250,300);
    image(ni,500,0,250,300);
  }
    
  }else if (state.equals("hangpage")){
    hangpage();
  }else if (state.equals("zhoupage")){
    zhoupage();
  }else if (state.equals("nipage")){
    nipage();
  }else if (state.equals("haopage")){
    haopage();
  }
  println(state);
}
 
   void hangpage(){
    background(0);
    tint(255);
    image(cai,0,0,250,320);
    image(rou,245,0,250,320);
    image(xie,495,0,250,300);
    image(zhunao,750,0,250,322);
    fill(255);
    textSize(15);
    text("which food does not belong to hangzhou?",width/2,20);
    if (mouseX < 250){
       fill(0);
       textSize(25);
       textAlign(CENTER);
       text ("vegetable shanzi",mouseX,mouseY);
      }else if (mouseX >250 && mouseX<500){
       textSize(25);
       textAlign(CENTER);
       text("dongpo pork",mouseX,mouseY);
      }else if (mouseX >500 && mouseX<750){
       fill(0);
       textSize(25);
       textAlign(CENTER);
       text("orange flavor crab",mouseX,mouseY);
      }else if (mouseX>750){
       fill(255);
       textSize(25);
       textAlign(CENTER);
       text("spicy pig's brain",mouseX,mouseY);
      }
        
   }
   
    void zhoupage(){
    background(0);
    tint(255);
    image(fengjing,0,0);
    fill(255);
    textSize(10);
    textAlign(CENTER);
    text("back home",970,290); 
    
    if(mouseX<700){{
     fill(0);
     textSize(20);
     textAlign(CENTER);
     text("west lake at dusk",330,40); 
     fill(0);
     textSize(15);
     text("what is the name of the tower? If you don't know, move the mouse to it",330,285); 
    }if(mouseX>0 && mouseX<200 && mouseY>100 && mouseY<120){
       fill(0);
       textSize(25);
       textAlign(CENTER);
       text("leifeng tower",mouseX,mouseY);}
       
     }else if(mouseX>700){
     fill(255);
     textSize(20);
     textAlign(CENTER);
     text("west lake at night",825,40);
    fill(255);
     textSize(15);
     text("move the mouse to the tower",825,285); }
     if(mouseX>780 && mouseX<800 && mouseY>150 && mouseY<160){
      fill(255);
      textSize(15);
      textAlign(CENTER);
      text("baochu tower",mouseX,mouseY); 
     }
    
 }
 
   
   void nipage(){
     background(0);
     tint(255);
     image(hehua,0,0,300,300);
     image(guihua,300,0,400,300);
     image(yinghua,750,0,300,300);
     fill(255);
     textSize(15);
     text("which flower does not belong to hangzhou?",200,30);
      if (mouseX < 300){
        imageMode(CENTER);
        image(xiaohua,50,y);
        if(y<0){
          y = height;}
          else{
            y = y+2;}
       fill(255);
       textSize(25);
       textAlign(CENTER);
       text ("waterlily",mouseX,mouseY);
      }else if (mouseX >300 && mouseX<700){
                imageMode(CENTER);
        image(huahua,400,x);
        if(x<0){
          y = height;}
          else{
            x = x+4;}
       textSize(25);
       textAlign(CENTER);
       text("osmanthus flower",mouseX,mouseY);
      }else if (mouseX >700){
        fill(255);
        textSize(25);
       textAlign(CENTER);
       text("sakura",mouseX,mouseY);
      }    
   }
   
   void haopage(){
     tint(255);
     image(hangzhou2,0,0);
     hangzhou2.play();
     hangzhou2.loop();
     tint(255,125);
     imageMode(CENTER);
     image(xiaohua,pmouseX,pmouseY,mouseX,mouseY);
     fill(235,237,105);
      textSize(15);
      text("back home",250,285);
   }
   
   void movieEvent(Movie movie) {
  movie.read();
}
   
  void mousePressed(){
   statePrevious = state;
   if (state.equals("start")){
     state = "home";
    }else if (state.equals("home") && (mouseX > 0 && mouseX < width/4)){
      state = "hangpage";
    }else if (state.equals("home") && (mouseX > width/4 && mouseX < 2*width/4)){
      state = "zhoupage";
    }else if (state.equals("home") && (mouseX > 2*width/4 && mouseX < 3*width/4)){
      state = "nipage";
    }else if (state.equals("home") && (mouseX > 3*width/4 && mouseX < width)){
      state = "haopage";
    }else if (state.equals("hangpage") && (mouseX > 3*width/4 && mouseX < width)){
      state = "home";
    }else if (state.equals("zhoupage") && (mouseX > 950 && mouseY >280)){
      state = "home";
    }else if (state.equals("nipage") && (mouseX > 700 && mouseX < 1000)){
      state = "home";
    }else if (state.equals("haopage") && (mouseX > 0 && mouseX < width/4)){
      state = "home";
    }
     if(!statePrevious.equals("haopage")){
     hangzhou2.play();
     hangzhou2.loop();
    }
  }
  
   
    


   void keyPressed(){
     if(!state.equals("start")){
       state ="start";
   }
   }
   