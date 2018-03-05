class Point{
  int x;
  int y;
  int size;
  String name;
  
  //CONSTRUCTOR
  Point(int x, int y, int size, String name){
    this.x = x;
    this.y = height - y;//CHANGE THE COORDINATE ORIENTATION TO LEFT BOTTOM SIDE OF THE SCREEN
    this.size = size;
    this.name = name;
  }
   
  void drawPoint(){
     //MAKE THE POINT DRAGGABLE
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
     
     //DRAW A CIRCLE
     stroke(255);
     ellipse(this.x, this.y, this.size, this.size);
     
     //CAPTION
     fill(153, 255, 241);
     textSize(16);
     text(name + " : (" + this.x + ", " + (height - this.y) + ")" ,this.x+this.size ,this.y);
  }
}