void setup() {
  background(0);
  size(600, 600);

  for (int i = 0; i < 25; i++) {
    xcors[i] = (int) random(50, 550);
  } //the random x coordinates

  for (int i = 0; i < 25; i++) {
    ycors[i] = (int) random(50, 550);
  } //the random y coordinates

  for (int i = 0; i < 25; i++) {
    xdirs[i] = 0;
    while (xdirs[i] == 0) {
      xdirs[i] = (int) random(-10, 10);
    }
  } //random x directions involved in both angle and speed

  for (int i = 0; i < 25; i++) {
    ydirs[i] = 0;
    while (ydirs[i] == 0) {
      ydirs[i] = (int) random(-10, 10);
    }
  } //random y directions invovled in both angle and speed


  //Ball ball = new Ball();
}

int xdir = 2;
int xcor = 20;
int ycor = 20;

int[] xcors = new int[25];
int[] ycors = new int[25];
int[] xdirs = new int[25];
int[] ydirs = new int[25];

void draw() {
  background(0);
  for (int i = 0; i < 25; i++) {
    color k = color((int) (random(256)), (int) (random(256)), (int) (random(256)));
    fill(k);
    ellipse(xcors[i], ycors[i], 50, 50);

    if (xcors[i] >= 575 || xcors[i] <=25) {
      xdirs[i] *= -1;
    } 
    if (ycors[i] >= 575 || ycors[i] <=25) {
      ydirs[i] *= -1;
    } 
    xcors[i] = xcors[i] + xdirs[i];
    ycors[i] = ycors[i] + ydirs[i];
  }

  //ellipse(xcor,ycor, 50, 50);

  //if (xcor >= 575) {
  //  xdir = -1;
  //}
  //xcor += xdir;
  //ycor += xdir;
}
