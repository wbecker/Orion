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

void draw(){    
  background( 100 );  
  drawStars(); 
  drawShip(width/2, height/2, 0);
}   

void drawStars() {
  fill( 255, 121, 184 );  
  stroke(255, 0, 0);   
  ellipse( 180, 180, 3, 3);            
}
  
void drawShip (int x, int y, float force) {
  int len = 40;
  int h = 20;
  int rodEdgeDistance = h / 2 - 4;
  int rodLength = 20;
  int shieldLength = 10;
  int shieldRadius = 20;

  fill(0, 121, 184);  
  stroke(255);   
  rect(x, y - h / 2, len, h);

  line(x, y + rodEdgeDistance, x - rodLength, y + rodEdgeDistance);
  line(x, y - rodEdgeDistance, x - rodLength, y - rodEdgeDistance);

  arc(x - (rodLength + shieldLength), y, shieldLength * 2, shieldRadius * 2, 
    -PI / 2, PI / 2);
}
