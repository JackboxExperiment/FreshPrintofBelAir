public class Ball {
  
  float xcord;
  float ycord;
  public Ball() {
    for (int i = 0; i < 25; i++) {
      xcord = random(50, 550);
      ycord = random(50, 550);
      ellipse( xcord, ycord, 50, 50);
      fill(random(0, 255), random(0,255), random(0, 255));
    }
  }
  
  static void move() {
    
  }
}