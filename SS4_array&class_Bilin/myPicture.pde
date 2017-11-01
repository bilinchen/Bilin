// Define a class as a new tag.

class Picture { 
  // Variables.
  float xpos;
  float ypos;
  float yspeed;

  // A constructor.
  Picture() { 
    xpos = width/2;
    ypos = height/2;
    yspeed = 1;
  }

  // Function.
  void display() { 
    // The Pic is just a square
  image(me[1],xpos,ypos,320,320);
  image(me[2],xpos-500,ypos-500,300,300);
  image(me[4],xpos-100,ypos-100,150,150);
  image(me[3],xpos+600,ypos+600,180,180);
  image(me[7],xpos+460,ypos-250,150,150);
  image(me[8],xpos-300,ypos-300,250,250);
  image(me[9],xpos+120,ypos+190,190,190);
  image(me[5],xpos-100,ypos-450,120,120);
  image(me[6],xpos+500,ypos+500,298,298);
  
  }

  // Function.  
  void move() { 
    ypos = ypos + yspeed;
    if (ypos > height) {
      ypos = 0;
    }
  }
}