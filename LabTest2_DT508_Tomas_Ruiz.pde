//Array that will store the state of the keyboard keys: pressed or not pressed
boolean[] keys;

float cloudMaxSpeed=10;
float cloudMinSpeed=5;


PVector planeStartPosition = new PVector(50,50);

float timeDelta = 1.0f / 60.0f;

Plane plane;
Person person;

ArrayList<Bomb> BombsRemaining;
ArrayList<Cloud> CloudsRemaining;

//colors
//colorMode(HSB, 360, 100, 100, 100);
color WHITE, BLACK, RED, BLUE, SKY, GREY, YELLOW, GREEN;




void setup()
{
   size(1280,720,P2D);
  //HSB color mode used for all the colos in the game
  colorMode(HSB, 360, 100, 100, 100);
  loadColors();
  
 //Array that will store the state of all the keyboard keys: pressed or not pressed
 keys = new boolean[512];
 
 PVector planeStartPosition = new PVector(50,50);
 
 plane = new Plane();
 person = new Person();
 BombsRemaining = new ArrayList<Bomb>();
 CloudsRemaining = new ArrayList<Cloud>();
 
 //generate 4 clouds
 for (int i=0; i<4; i++)
 {
   CloudsRemaining.add( new Cloud () );
 }
 println(CloudsRemaining.size());



  
  
}

void draw()
{
 displayBackground();
 displayAndUpdateClouds();

  
 plane.update();
 plane.display();
 
 

 displayAndUpdateBombs();
 
 person.update();
 person.display();
  
  
  
}


//if a certain key is pressed it will update the keys array position of that key with true, menaning it's pressed.
void keyPressed()
{
  keys[keyCode] = true;
}

//if a certain key is released it will update the keys array position of that key with true, menaning it's no longer pressed.
void keyReleased()
{
  keys[keyCode] = false;
}

void displayBackground()
{
  //draw sky
  noStroke();
  fill(SKY);
  rect(0, 0, width, height*0.5f);
  
  //draw grass
  noStroke();
  fill(GREEN);
  rect(0, height*0.5f, width, height*0.5f);
}

void displayAndUpdateBombs()
{
   for (int i = 0; i < BombsRemaining.size(); i++) {
     
     (BombsRemaining.get(i)).display();
     (BombsRemaining.get(i)).update();
     

   }
}

void displayAndUpdateClouds()
{
   for (int i = 0; i < CloudsRemaining.size(); i++) {
     
      println(CloudsRemaining.size());

     (CloudsRemaining.get(i)).display();
     (CloudsRemaining.get(i)).update();
     

   }
}


void loadColors()
{
    WHITE = color(360,0,100,100);
    BLACK = color(360,0,0,100);
    RED = color(360,100,100,100);
    BLUE = color(240,100,100,100);
    SKY = color(180, 100, 100,100);
    GREY = color(360,0,50,100);
    GREEN = color(115,100,100,100);
    YELLOW = color(60,100,100,100);
    
}