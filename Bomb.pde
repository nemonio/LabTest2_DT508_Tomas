class Bomb extends GameObject {
  
  PVector gravity;
  PVector acceleration;
  float mass;

  
  PVector dropPosition;
  
  
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Bomb()
  {
    super();    
  }
  
  Bomb(float x, float y)
  {
    super(x, y);
    gravity = new PVector();
    acceleration = new PVector();
    mass = 1.0f;
    
    
    
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
        
    
    if (position.y >= dropPosition.x)
    {
      position.y = width;
    }

    
    acceleration = PVector.div(gravity, mass);
    velocity.add(PVector.mult(acceleration, timeDelta));
    position.add(PVector.mult(velocity, timeDelta));
  }
  
  void display()
  {
    stroke(255);
    pushMatrix(); // reset the translation and rotation
    translate(position.x, position.y);
    rect(0,0,100,100);
    popMatrix();
  }   
  

  
} //END OF CLASS