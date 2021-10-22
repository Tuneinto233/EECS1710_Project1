class Main{
  PImage star;
  
  Main(){
    star = loadImage("star.png");
    imageMode(CENTER);
  }
  
  void draw(){
    image(star, mouseX, mouseY, 40, 80);
  }
}
