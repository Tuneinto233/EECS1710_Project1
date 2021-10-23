PImage star, crouch, happy, running, standing;
PVector position, target, mousePos;
float distance;
boolean debug = true;

void setup() {
  size(800, 600, P2D);
  imageMode(CENTER);
  crouch = loadImage("crouch.png");
  happy = loadImage("happy.png");
  running = loadImage("running.png");
  standing = loadImage("standing.png");    
  star = loadImage("star.png");
  star.resize(40, 80);
  crouch.resize(40, 80);
  happy.resize(40, 80);
  running.resize(40, 80);
  standing.resize(40, 80);
  position = new PVector(random(800), random(600));
  target = new PVector(random(width), random(height));
  mousePos = new PVector(mouseX, mouseY);
  
}

void draw() {
  background(255);
  image(star, mouseX, mouseY);
  image(standing, position.x, position.y);
  distance = position.dist(mousePos);
  if (distance > 50) {
    position = position.lerp(mousePos, 0.5);
  }
  if(debug){
  println(distance);
  }
}
