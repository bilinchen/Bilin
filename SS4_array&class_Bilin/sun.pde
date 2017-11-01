// Define a class as a new tag.
class Sun { 
  // Variables.
  color c; 
  float xpos;
  float ypos;
  float xspeed;
  float diameter;

  // A constructor.
  Sun() { 
    c = color(175,0,0);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }

  // Function.
  void display() { 
    // The sun is just a circle
    ellipseMode(CENTER);
    stroke(0);
    fill(c);
    ellipse(xpos, ypos, 50, 50);
  }

  // Function.  
  void move() { 
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
  
  void grow(){
   diameter=constrain(diameter, 0, width);
    if (keyPressed) {
      if (key== '1') {
        diameter++;
      } else if (key=='2') {
        diameter--; 
    
}
    }
  }
}