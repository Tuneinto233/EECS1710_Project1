class Main{
  PImage star;
  
  Main(){
    star = loadImage("star.png");
    imageMode(CENTER);
    star.resize(40, 80);
  }
  
  void draw(){
    image(star, mouseX, mouseY);
  }
}
