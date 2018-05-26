import java.util.*;

void setup() {
  background(0);
  size(600, 600);

  for (int i = 0; i < 25; i++) { 
    balls.add(new Ball());
  }
}

ArrayList<Ball> balls = new ArrayList<Ball>();
ListIterator<Ball> ballsIter = balls.listIterator();
ArrayList<Ball> growingBalls = new ArrayList<Ball>();
ListIterator<Ball> gBallsIter = growingBalls.listIterator();
ArrayList<Ball> toBeRemoved = new ArrayList<Ball>();



void draw() {
  background(0);



  //while (ballsIter.hasNext()) {
  //  Ball goat = ballsIter.next();
  //  if (goat.contact(growingBalls.get(0))) {
  //    ballsIter.remove();
  //  }
    
  //  //while (gBallsIter.hasNext()) {
  //  //  Ball gBall = gBallsIter.next();
  //  //  if (goat.contact(gBall)) {
  //  //    ballsIter.remove();
  //  //    gBallsIter.add(gBall);
  //  //  }
  //  //}
   
  //}
  
  toBeRemoved = new ArrayList<Ball>();
  
  for (Ball b : balls) {
    for (Ball k : growingBalls) {
      if (b.contact(k)) {
        toBeRemoved.add(b);
      }
    }
  }
  
  for (Ball y : toBeRemoved) {
    y.initiateGrow();
    balls.remove(y);
    growingBalls.add(y);
  }
  
  

  for (Ball g : growingBalls) {
    g.grow();
  }

  for (Ball b : balls) {
    b.move();
  }
}

void mouseClicked() {
  growingBalls.add(new Ball(mouseX, mouseY));
}
