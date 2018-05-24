public class Ball {

  float xcord;
  float ycord;
  float xdir;
  float ydir;
  color colour;

  public Ball() {
    colour = color( (int) random(256), (int) random(256), (int) random(256) );

    fill(colour);

    xcord = random(25, 575);
    //the random x coordinates

    ycord = random(50, 550);
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

    ellipse(xcord, ycord, 50, 50);
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
}
