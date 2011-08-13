class Ship {
  int len = 40;
  int h = 20;
  int rodEdgeDistance = h / 2 - 4;
  int rodLength = 20;
  int shieldLength = 10;
  int shieldRadius = 20;

  void draw(int x, int y, float force) {
    fill(0, 121, 184);  
    stroke(255);   
    rect(x, y - h / 2, len, h);

    line(x, y + rodEdgeDistance, x - rodLength, y + rodEdgeDistance);
    line(x, y - rodEdgeDistance, x - rodLength, y - rodEdgeDistance);

    arc(x - (rodLength + shieldLength), y, shieldLength * 2, shieldRadius * 2, 
      -PI / 2, PI / 2);
  }
}

class Star {
  int x;
  int y;
  int radius;
  Star(int x, int y, int radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  void moveBy(int dx, int dy) {
    this.x -= dx;
    this.y -= dy;
  }
  boolean isVisible() {
    return x + radius >= 0;
  }
  void draw() {
    fill( 255, 121, 184 );  
    stroke(255, 0, 0);   
    ellipse(x, y, radius * 2, radius * 2);            
  }
}

Ship s = new Ship();
ArrayList stars = new ArrayList();
int maxStarSize = 5;
int initialStars = 60;
void setup() {  
  size(800,400);  
  background(125);  
  fill(255);  
  PFont fontA = loadFont("courier");  
  textFont(fontA, 14);    
  frameRate( 15 )
  
  createStars(); 
}
void createStars() {
  int ii;
  for (ii = 0; ii < initialStars; ii++) {
    stars.add(new Star(random(width), random(height), random(maxStarSize)));
  }
}
void draw () {    
  background( 100 );  
  int speed = 2;
  moveStars(speed); 
  drawStars(); 
  s.draw(width/2, height/2, 0);
}   
void moveStars(int speed) {
 ArrayList toRemove = new ArrayList();
 for (int i = 0; i < stars.size(); i++) {
   Star star = (Star) stars.get(i);
   star.moveBy(speed, 0);
   if (!star.isVisible()) {
     toRemove.add(i);
   }
 }
 for (int i = 0; i < toRemove.size(); i++) {
   stars.remove(toRemove.get(i));
   stars.add(new Star(width, random(height), random(maxStarSize)));
 }

}

void drawStars() {
 for (int i = 0; i < stars.size(); i++) {
   stars.get(i).draw();
 }
}

