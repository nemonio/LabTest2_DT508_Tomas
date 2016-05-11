class Cloud extends GameObject {
  
  float cloudSpeed;
  
    // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Cloud()
  {
    this(random(0,width), random(0,height*0.5), 50, 50, random(cloudMinSpeed, cloudMaxSpeed) );   
  }
  
  Cloud(float x, float y, float sizeX, float sizeY, float cloudSpeedvar)
  {
    //start position in x=0 less the size of the plane
    super(x, y-sizeY);
    theta=PI+PI*0.5f;
    size = new PVector(sizeX, sizeY);
    cloudSpeed = cloudSpeedvar;


  }
  
  
  
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
        
    
    if (position.x <= 0-size.x)
    {
      position.x = width;
    }
    
    velocity.x = forward.x;
    velocity.y = forward.y;    
    velocity.mult(cloudSpeed);    
    position.add(velocity);

  }
  
  void display()
  {
    pushMatrix(); // reset the translation and rotation
    translate(position.x, position.y);
    
    noStroke();
    fill(WHITE);
    ellipse(0, 0, size.x/2, size.y/2);
    
    //ellipse(size.x/2, size.y/2, size.x/2, size.y/2);
    
    ellipse(size.x/2*0.5f, size.y/2*0.5f, size.x/2, size.y/2);
    
    ellipse(0, 0, size.x*0.8f, size.y*0.8f);
    
    popMatrix();
  }  
  
  
  
} //END OF CLASS