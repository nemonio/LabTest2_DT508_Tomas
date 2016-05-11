class Person extends GameObject {
  
  float personSpeed=10;



   
   
   
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Person()
  {
     this(50, height-50, 50, 50); 
  }
  
  Person(float x, float y, float sizeX, float sizeY)
  {
    
    super(x, y);
    theta=0;
    size = new PVector(sizeX, sizeY);
    personSpeed=10;

  }
  
  

  void update()
  {
    
      if(plane.hasReachedTheGround == true)
      {
            //change theta to aim to the drop bomb
            //theta = atan2( ( (BombsRemaining.get(0) ).position.y + ( (BombsRemaining.get(0) ).size.y/2 - (position.y + size.y/2) , ( (BombsRemaining.get(0) ).position.x + ((BombsRemaining.get(0)).size.x/2) - (position.x + size.x/2) );
        
        
            forward.x = sin(theta);
            forward.y = - cos(theta);
                
            
            velocity.x = forward.x;
            velocity.y = forward.y;    
            velocity.mult(personSpeed);  
            position.add(velocity);
            
      }
      
            if(plane.hasBeenCollectedByThePerson == true)
      {
        
          //go back to origin
            
      }


    



  }
  
  void display()
  {
    pushMatrix(); // reset the translation and rotation
    translate(position.x, position.y);
    
    noStroke();
    fill(RED);
    ellipse(0, 0, size.x, size.y);
    
    popMatrix();
  }

  }//END OF CLASS