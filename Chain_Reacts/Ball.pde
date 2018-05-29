public class Ball {

  final static float RADIUS = 25;
  final static float CHANGE_FACTOR = 0.25;

  float xcord;
  float ycord;
  float xdir;
  float ydir;
  color colour;
  float radius;
  int growing = 0;

  public Ball() {
    this(random(25, 575), random(25, 575));
  }

  public Ball(float xcor, float ycor) {
    colour = color( (int) random(256), (int) random(256), (int) random(256) );

    radius = 25;

    fill(colour);

    xcord = xcor;
    //the random x coordinates

    ycord = ycor;
    //the random y coordinates

    xdir = 0;
    while (xdir == 0) {
      xdir = random(-10, 10); //can't be 0
    }
    //random x directions involved in both angle and speed

    ydir = 0;
    while (ydir == 0) {
      ydir = random(-10, 10); //can't be 0
    }
    //random y directions invovled in both angle and speed

    ellipse(xcord, ycord, radius * 2, radius * 2);
  }
  
  public void initiateGrow() {
    growing = 1;
  }



  void move() {
    if (xcord >= 575 || xcord <=25) {
      xdir *= -1;
    } 

    if (ycord >= 575 || ycord <=25) {
      ydir *= -1;
    } 

    xcord= xcord + xdir;
    ycord = ycord + ydir;


    fill(colour);
    ellipse(xcord, ycord, 50, 50);
  }

  void grow() {
    if (radius > 0) {
      if (growing == 1) {
        if (radius < 60) {
          radius += CHANGE_FACTOR;
        } else {
          growing = -1;
        }
      } else {
        radius -= CHANGE_FACTOR;
      }

    fill(colour);

      ellipse(xcord, ycord, radius * 2, radius * 2);
    }
  }
  
  
  
  boolean contact( Ball sec) {
    
    //return (sec.xcord - xcord <= 20);
    
    //return sqrt(pow(xcord - sec.xcord, 2) + pow(ycord + sec.ycord, 2)) <= radius + sec.radius;
    if (sec != null) {
    return pow(xcord - sec.xcord, 2) + pow(ycord - sec.ycord, 2) <= pow(radius + sec.radius, 2);
    }
    return false;
 
  }
  
}
