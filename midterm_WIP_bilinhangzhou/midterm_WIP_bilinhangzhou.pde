
String state = "start";

PImage shan,hang,zhou,ni,hao,cai,rou,xie,zhunao,fengjing,hehua,guihua,yinghua,shi,xiaohua;

void setup(){
  size(1000,300);
  background(0);
  shan = loadImage("s0.jpg");
  hang = loadImage("s1.jpg");
  zhou = loadImage("s2.jpg");
  ni = loadImage("s3.jpg");
  hao = loadImage("s4.jpg");
  cai = loadImage("11.jpg");
  rou = loadImage("12.jpg");
  xie = loadImage("13.jpg");
  zhunao = loadImage("14.jpg");
  fengjing = loadImage("21.jpg");
  hehua = loadImage("31.jpg");
  guihua = loadImage("32.jpg");
  yinghua = loadImage("33.jpg");
  shi = loadImage("41.jpg");
  xiaohua = loadImage("42.png");
}

void draw(){
  if(state.equals("start")){
    image(shan,0,0);
    fill(0);
    textSize(36);
    textAlign(CENTER);
    text("welcome to hangzhou",mouseX,mouseY);
    textSize(20);
    textMode(CENTER);
    text("click",mouseX+50,mouseY+50);
    
    
  }else if(state.equals("home")){
    background(0);
  if (mouseX > 0 && mouseX < width/4){
    image(hang,0,0,250,300);
    fill(255);
    textSize(20);
    text("click me",120,285);
  }else if (mouseX > width/4 && mouseX < 2*width/4){
    image(zhou,250,0,250,300);
        fill(255);
    textSize(20);
    text("click me",380,285);
  }else if (mouseX > 2*width/4 && mouseX < 3*width/4){
    image(ni,500,0,250,300);
        fill(255);
    textSize(20);
    text("click me",620,285);
  }else if (mouseX > 3*width/4 && mouseX < width){
    image(hao,750,0,250,300);
        fill(255);
    textSize(20);
    text("click me",880,285);
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
    image(cai,0,0,250,300);
    image(rou,250,0,250,300);
    image(xie,500,0,250,300);
    image(zhunao,750,0,250,300);
    fill(255);
    textSize(15);
    text("which food does not belong to hangzhou?",width/2,30);
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
     image(hehua,0,0,300,300);
     image(guihua,300,0,400,300);
     image(yinghua,700,0,300,300);
     fill(255);
     textSize(20);
     text("which flower does not belong to hangzhou?",width/2,30);
      if (mouseX < 300){
       fill(0);
       textSize(25);
       textAlign(CENTER);
       text ("waterlily",mouseX,mouseY);
      }else if (mouseX >300 && mouseX<700){
       textSize(25);
       textAlign(CENTER);
       text("osmanthus flower",mouseX,mouseY);
      }else if (mouseX >700){
        fill(0);
        textSize(25);
       textAlign(CENTER);
       text("sakura",mouseX,mouseY);
      }    
   }
   
   void haopage(){
     image(shi,0,0);
     image(xiaohua,190,10,mouseX,mouseY);
     fill(235,237,105);
      textSize(15);
      text("how to back home?",250,285);
      text("move the mouse and cover the brightest waterlily, then click the mouse",600,285);
   }
   
   
  void mousePressed(){
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
    
  }

   void keyPressed(){
       state.equals("start");
   }