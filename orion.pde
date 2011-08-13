float radius = 50;
int X, Y;  
int nX, nY;  
int delay = 16;  
void setup()  
{  
  size(200,200);  
  background(125);  
  fill(255);  
//  noLoop();  
  PFont fontA = loadFont("courier");  
  textFont(fontA, 14);    
  X = width / 2;  
  Y = height / 2;  
  nX = X;  
  nY = Y;    
  frameRate( 15 )
}    
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
  Star(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void moveBy(int dx, int dy) {
    this.x -= dx;
    this.y -= dy;
  }
  void draw() {
    fill( 255, 121, 184 );  
    stroke(255, 0, 0);   
    ellipse(x, y, 3, 3);            
  }
}
Ship s = new Ship();
void draw(){    
  background( 100 );  
  drawStars(); 
  s.draw(width/2, height/2, 0);
}   

void drawStars() {
  new Star(10).draw();
}

