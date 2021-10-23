Main main;
People people;



void setup() {
  size(800, 600, P2D);
  main = new Main();
  people = new People();
  main = new Main();
}

void draw() {
  background(255);
  main.draw();
  people.draw();
  people.move();

}
