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
  
  Bomb(float x, float y, float sizeX, float sizeY)
  {
    super(x, y);
    theta=PI;
    
    //set gravity to accelerate 10m/s in the y axis
    gravity = new PVector(0, 10);
    acceleration = new PVector();
    mass = 0.01f;
    dropPosition = new PVector(x, random (height*0.5f, height));
    size = new PVector(sizeX, sizeY);
    
    
    
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);

        
    
    if (position.y >= dropPosition.y)
    {
      position.y = dropPosition.y;
    }

    
    acceleration = PVector.div(gravity, mass);   
    velocity.add(PVector.mult(acceleration, timeDelta));
    position.add(PVector.mult(velocity, timeDelta));

    if (position.y >= dropPosition.y)
    {
      position.y = dropPosition.y;
    }
    
    /*
    
        velocity.add(acceleration);
    position.add(velocity);

    */
  }
  
  void display()
  {
    stroke(255);
    pushMatrix(); // reset the translation and rotation
    translate(position.x, position.y);
    rect(0, 0, size.x, size.y);
    popMatrix();
  }   
  

  
} //END OF CLASS