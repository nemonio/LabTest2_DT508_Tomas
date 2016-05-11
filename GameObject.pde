class GameObject {
  
  PVector position;
  PVector size;
  
  
  PVector forward;
  PVector velocity;

  float theta;

  
  
  GameObject(float x, float y)
  {
    position = new PVector(x, y);
    forward = new PVector(0, 1);
    velocity = new PVector(0, 0);

    theta = 0;
    size = new PVector(1, 1);

  }
  
  GameObject()
  {
    // This calls a constructor in the same class
    this(width / 2, height / 2);
  } 
  
  public void update()
  {
  }
  
  public void render()
  {
  }
  
  
  }//End of class