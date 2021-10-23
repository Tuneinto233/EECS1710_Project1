class People {
  PImage crouch, happy, running, standing;
  PVector position;
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
    distance = dist(position.x, position.y, mouseX, mouseY);
  }

  void draw() {
    image(standing, position.x, position.y);
  }

  void move() {
    if (distance > 50) {
      position = position.lerp(position, 0.5);
    }
  }
}
