
Pendukung pendukung = new Pendukung();
///////////////////////////////////////////////////////////////////////////////////////////
Gambar A = new Gambar();
Gambar B = new Gambar();
Gambar C = new Gambar();
Gambar D = new Gambar();
int sizePoint = 20;


void keyPressed(){
  int s = height-(mouseY*2);
  int x = mouseX;
  int y = mouseY+s;
  if(keyCode == UP){
    A.buatTitik(x,y,sizePoint,"A");
  }
  if(keyCode == DOWN){
    B.buatTitik(x,y,sizePoint,"B");
  }
  if(keyCode == LEFT){
    C.buatTitik(x,y,sizePoint,"C");
  }
  if(keyCode == RIGHT){
    D.buatTitik(x,y,sizePoint,"D");
  }
}

void setup(){
  size(600,600);
  A.buatTitik(50,50,sizePoint,"A");
}

void draw(){
  background(32, 50, 66);
  //Menggambar
  pendukung.tampilkanGrid(10,10);
  A.run();
  B.run();
  C.run();
  D.run();
  pendukung.tampilkanCursor();
}