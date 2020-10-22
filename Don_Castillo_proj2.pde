/***********************
  Don Castillo, NMED 3380 B
  Project 2: Alien Invasion Animation
  Last Modified: 10/21/2020 4PM 
************************/


/***********************
@desc: Global Variables
************************/

PFont font;
PImage spaceImg;
PImage rocketImg, yellowCarImg, brownCarImg, asteroid1Img, asteroid2Img;
Asteroid[] asteroidTop = new Asteroid[2];
Asteroid[] asteroidDiagonal = new Asteroid[1];
Spaceship[] spaceship = new Spaceship[5];
MyObject rocket;



void setup() {
  // width and height of the window
  size(1000, 600);                  
  
  // set default background
  background(0);       
  
  // load text font
  font = loadFont("Consolas-48.vlw");  
  
  // load all images
  spaceImg = loadImage("space.jpg");        
  rocketImg = loadImage("rocket.png");
  yellowCarImg = loadImage("yellow-car.png");
  brownCarImg = loadImage("brown-car.png");
  asteroid1Img = loadImage("asteroid-1.png");
  asteroid2Img = loadImage("asteroid-2.png");
  
  // set scene objects
  setSceneTwoObjects();
}



void draw() {
  sceneTwo();
}




/***********************
@desc: Scene 1
       displays the title of the animation
************************/
void sceneOne() {
  setBackground(spaceImg, color(201, 201, 201, 255));        // displays space image as background
  setTitle("The Invasion");                               // displays title
}

void sceneTwo() {
  // display background
  setBackground(spaceImg, color(201, 201, 201, 255));
  
  // display top asteroids
  for(int i = 0; i < asteroidTop.length; ++i) {
      asteroidTop[i].backward();
      asteroidTop[i].rotateClockwise();
  }
  
  // display bottom asteroids
  for(int i = 0; i < asteroidDiagonal.length; ++i) {
    asteroidDiagonal[i].toBottomRight();
    asteroidDiagonal[i].rotateClockwise();
  }
  
  // display spaceships
  for(int i = 0; i < spaceship.length; ++i) {
    spaceship[i].display();
    spaceship[i].forward();
  }
  
  rocket.display();
  rocket.toTopLeft();
  
}

void sceneThree() {

}

void sceneFour() {

}

void sceneFive() {

}

void sceneSix() {

}

void sceneSeven() {

}


void setSceneTwoObjects() {
  // set top asteroids
   for(int i = 0; i < asteroidTop.length; ++i) {
    float dimension = random(50, 300);
    float speed = random(2, 10);
    asteroidTop[i] = new Asteroid(width + 2, random(height/2, height), dimension, dimension);
    asteroidTop[i].setImage(asteroid1Img);
    asteroidTop[i].setSpeed(speed);
  }
  
  // set diagonal asteroids
  for(int i = 0; i < asteroidDiagonal.length; ++i) {
    float dimension = random(50, 150);
    float speed = random(2, 5);
    asteroidDiagonal[i] = new Asteroid(-2, -2, dimension, dimension);
    asteroidDiagonal[i].setImage(asteroid2Img);
    asteroidDiagonal[i].setSpeed(speed);
  }
  
  // set spaceship
  float spaceshipWidth = 200;
  float spaceshipHeight = 200;
  float spaceshipSpeed = 7;
  spaceship[0] = new Spaceship(-2, height/2, spaceshipWidth, spaceshipHeight);
  spaceship[1] = new Spaceship(-50, (height/2) - 70, spaceshipWidth, spaceshipHeight);
  spaceship[2] = new Spaceship(-50, (height/2) + 70 , spaceshipWidth, spaceshipHeight);
  spaceship[3] = new Spaceship(-100, (height/2) - 140 , spaceshipWidth, spaceshipHeight);
  spaceship[4] = new Spaceship(-100, (height/2) + 140 , spaceshipWidth, spaceshipHeight);
  spaceship[0].setSpeed(spaceshipSpeed);
  spaceship[1].setSpeed(spaceshipSpeed);
  spaceship[2].setSpeed(spaceshipSpeed);
  spaceship[3].setSpeed(spaceshipSpeed);
  spaceship[4].setSpeed(spaceshipSpeed);
  
  // set rocket
  float rocketWidth = 200;
  float rocketHeight = 200;
  float rocketSpeed = 15;
  rocket = new MyObject(width + 5, height + 5, rocketWidth, rocketHeight);
  rocket.setImage(rocketImg);
  rocket.setSpeed(rocketSpeed);
}








/***********************
@desc: sets the scenes title in the center
@params:  text to be displayed
************************/
void setTitle(String title) {
  textFont(font, 48);
  textAlign(CENTER, CENTER);
  fill(250);
  text(title, width/2, height/2);
}


/***********************
@desc: sets the scenes background image
@params:  image to be displayed
************************/
void setBackground(PImage pImage, color pColor) {
  tint(pColor);
  imageMode(CENTER);
  image(pImage, width/2, height/2, width, height); 
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
