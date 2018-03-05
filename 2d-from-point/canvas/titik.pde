class Titik{
  int x;
  int y;
  int size;
  String name;
  
  //CONSTRUCTOR
  Titik(int x, int y, int size, String name){
    this.x = x;
    this.y = height - y;//MENJADIKAN KOORDINAT AWAL (0,0) MENJADI DI POJOK KIRI BAWAH SCREEN
    this.size = size;
    this.name = name;
  }
   
  void gambarTitik(){
     //MENJADIKAN TITIK DISA DI DRAG
     if(dist(this.x, this.y, mouseX, mouseY)<this.size/2){
       fill(255, 255, 255);
       if(mousePressed){
         this.x = mouseX;
         this.y = mouseY;
       }
     }
     else{
       fill(101, 188, 119);
     }
     
     //MEMBUAT LINGKARAN
     stroke(255);
     ellipse(this.x, this.y, this.size, this.size);
     
     //CAPTION
     fill(153, 255, 241);
     textSize(16);
     text(name + " : (" + this.x + ", " + (height - this.y) + ")" ,this.x+this.size ,this.y);
  }
}