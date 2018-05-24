void setup() {
  background(0);
  size(600, 600);
  
  for (int i = 0; i < 25; i++) { 
    balls[i] = new Ball();
  }
}

Ball[] balls = new Ball[25];

void draw() {
 background(0);

  for (Ball b : balls) {
    b.move();
  }
  
}
