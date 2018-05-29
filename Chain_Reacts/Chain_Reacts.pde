import java.util.*;

void setup() {
  background(0);
  size(600, 600);

  for (int i = 0; i < 25; i++) { 
    movingBalls.add(new Ball());
  }
}

ArrayList<Ball> movingBalls = new ArrayList<Ball>();
//ListIterator<Ball> ballsIter = movingBalls.listIterator();
ArrayList<Ball> growingBalls = new ArrayList<Ball>();
//ListIterator<Ball> gBallsIter = growingBalls.listIterator();
ArrayList<Ball> toBeRemoved = new ArrayList<Ball>();



void draw() {
  background(0);

  
  toBeRemoved = new ArrayList<Ball>(); //clears toBeRemoved each draw
  
  
  //add the movingBalls that  toBeRemoved 
  for (Ball b : movingBalls) {
    for (Ball k : growingBalls) {
      if (b.contact(k)) {
        toBeRemoved.add(b);
      }
    }
  }
  
  //removes from movingballs the balls that need to be removed
  //add them to growing balls
  for (Ball y : toBeRemoved) {
    y.initiateGrow();
    movingBalls.remove(y);
    growingBalls.add(y);
  }
  
  
  
  //growing balls grow
  for (Ball g : growingBalls) {
    g.grow();
  }

  //moving balls move
  for (Ball b : movingBalls) {
    b.move();
  }
}

//mouse is created in the spot and grows
void mouseClicked() {
  Ball mouseB = new Ball(mouseX, mouseY);
  mouseB.initiateGrow();
  growingBalls.add(mouseB);
}
