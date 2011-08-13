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
  drawShip();
}   

void drawStars() {
  fill( 255, 121, 184 );  
  stroke(255, 0, 0);   
  ellipse( 180, 180, 3, 3);            
}
  
void drawShip () {
  radius = radius + sin( frameCount / 4 );  
  X+=(nX-X)/delay;  
  Y+=(nY-Y)/delay;  
  fill( 0, 121, 184 );  
  stroke(255);   
  ellipse( X, Y, radius, radius );            
  
}
