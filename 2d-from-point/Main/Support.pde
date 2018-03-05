class Support{
  //GRID IF REQUIRED
  void showGrid(int w, int h){
    int widthCounter = 0;
    int heightCounter = 0;
    
    stroke(0);
    while(widthCounter <= width){
      line(widthCounter,0,widthCounter,height);
      widthCounter+=w;
    }
      
    while(heightCounter <= width){
       heightCounter+=h;
       line(0,heightCounter,width,heightCounter);
    }
  }
  
  //CURSOR COORDINATE
  void showCursor(){
    fill(153, 255, 241);
    textSize(14);
    text("X : "+mouseX+"  Y : "+(height-mouseY),10,20);
  }
}  
   