int scene = 1;
int x = -50;
float r = 150;
float g = 0;
float b = 0;
String statement = "Use the keyboard and press one, two, three";

void setup(){
  size(720,480);
  background(r,g,b);
}

void draw(){
  text(statement,100,100,500,500);
  stroke(0,150,0);
  while (x < width){
  arc(x, height/2, 50, 50, 0, HALF_PI);
noFill();
arc(x, height/2, 60, 60, HALF_PI, PI);
arc(x, height/2, 70, 70, PI, PI+QUARTER_PI);
arc(x, height/2, 80, 80, PI+QUARTER_PI, TWO_PI);
  x = x + 100;
  }
  
  
  if (mouseY > height/2){
    r = r + 1;
  }else{
    r = r - 1;
  }
  if (scene == 1){
   
  }else if (scene == 2){
    icecream(height/5, height/5, 65, 170, 230, 180, "I");
  }else if (scene == 3){
    icecream(height/3, height/5, 75, 245, 120, 200, "am");
  }else if (scene == 4){
    icecream(height/2, height/5, 80, 80, 190, 230, "hungry");
}

}

void icecream(int x, int y, int diameter, int r, int g, int b, String word) {
  fill(170,120,35);
  triangle(x, y, x+50, y, x+25, y+100);
  fill(r,g,b);
  ellipse(x+25, y, diameter, diameter);
  textAlign(CENTER);
  textSize(22);
  text(word, x+25, y+125);
  }
    

void keyPressed(){
  if (key == '1'){
    scene = 1;
  }else if (key == '2'){
    scene = 2;
  }else if (key == '3'){
    scene = 3;
  }else if (key == '4'){
   scene = 4;
}
}