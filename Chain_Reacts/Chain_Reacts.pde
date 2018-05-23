void setup() {
  background( 0 );
  size(600, 600);
  Ball ball = new Ball();
}

void draw() {
  Ball.move();
}