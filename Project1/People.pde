class People {
  PImage crouch, happy, running, standing;
  PVector position, target, mousePos;
  float distance;


  People() {
    imageMode(CENTER);
    crouch = loadImage("crouch.png");
    happy = loadImage("happy.png");
    running = loadImage("running.png");
    standing = loadImage("standing.png");
    crouch.resize(40, 80);
    happy.resize(40, 80);
    running.resize(40, 80);
    standing.resize(40, 80);
    position = new PVector(random(800), random(600));
    target = new PVector(position.x, position.y);
    mousePos = new PVector(mouseX, mouseY);
    distance = target.dist(mousePos);
  }

  void draw() {
    image(standing, position.x, position.y);
    //it was move();
    if (distance > 5) {
      position = position.lerp(position, 0.5);
    }
  }

  void move() {
    if (distance > 5) {
      position = position.lerp(position, 0.5);
    }
  }
}
