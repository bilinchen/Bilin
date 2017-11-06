class Automan{
  int a;
  int b;
  
  Automan(int tempA, int tempB, int tempDiameter){
    a = tempA;
    b = tempB;
  }
  
  void display(){
    image(aman,a,b);
  }
  
  void up(){
    frameRate(120);
    if (b > height+100 ){
      b = -100;
    }else {
      b ++;
    }
  }
  
  void grow(){
    if (keyPressed){
      if (key == '1'){
        a = a+5;
        
      }else if(key =='2'){
        a = a - 5;
      }}}}
        
    
  