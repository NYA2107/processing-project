
Support sup = new Support();
///////////////////////////////////////////////////////////////////////////////////////////
Sketch A = new Sketch();
Sketch B = new Sketch();
Sketch C = new Sketch();
Sketch D = new Sketch();
int sizePoint = 20;


void keyPressed(){
  int s = height-(mouseY*2);
  int x = mouseX;
  int y = mouseY+s;
  if(keyCode == UP){
    A.makePoint(x,y,sizePoint,"A");
  }
  if(keyCode == DOWN){
    B.makePoint(x,y,sizePoint,"B");
  }
  if(keyCode == LEFT){
    C.makePoint(x,y,sizePoint,"C");
  }
  if(keyCode == RIGHT){
    D.makePoint(x,y,sizePoint,"D");
  }
}

void setup(){
  size(600,600);
  A.makePoint(50,50,sizePoint,"A");
}

void draw(){
  background(32, 50, 66);
  //DRAW
  sup.showGrid(10,10);
  A.run();
  B.run();
  C.run();
  D.run();
  sup.showCursor();
}