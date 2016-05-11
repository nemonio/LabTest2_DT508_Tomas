class Plane extends GameObject {
  
  float planeSpeed=10;
  
  //Has the bomb been ejected from the plane?
  boolean hasBeenEjected;
  //Has the bomb been collected by the player?
  boolean hasBeenCollectedByThePerson;
  
  boolean hasReachedTheGround;

  
  
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Plane()
  {
    this(0, 50, 200, 50);   
  }
  
  Plane(float x, float y, float sizeX, float sizeY)
  {
    //start position in x=0 less the size of the plane
    super(x-sizeX, y);
    hasBeenEjected = false;
    hasReachedTheGround = false;
    hasBeenCollectedByThePerson = true;
    theta=PI*0.5f;
    size = new PVector(sizeX, sizeY);


  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    
    if (keys[' '] && hasBeenEjected == false && hasBeenCollectedByThePerson == true)
    {
        //generates the bomb so it falls from the middle of the plane at its bottom with a square size of 30
        BombsRemaining.add( new Bomb (position.x-size.x*0.5f, position.y+size.y, 30, 30) );
        hasBeenEjected = true;
    }
        
    
    if (position.x >= width)
    {
      position.x = 0-size.x;
    }
    
    velocity.x = forward.x;
    velocity.y = forward.y;    
    velocity.mult(planeSpeed);    
    position.add(velocity);

  }
  
  void display()
  {

    pushMatrix(); // reset the translation and rotation
    translate(position.x, position.y);
    
    noStroke();
    fill(GREY);
    rect(0,0,200,50);
    
    popMatrix();
  }   
  

  
} //END OF CLASS