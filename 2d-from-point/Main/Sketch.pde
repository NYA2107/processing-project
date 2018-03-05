class Sketch{
  ArrayList<Point> list = new ArrayList();
  
  void makePoint(int x, int y, int size, String name){
    list.add(new Point(x,y,size,name + (list.size()+1)));
  } 
  
  void setPoint(){
    for(int i = 0; i < list.size(); i++){
      list.get(i).drawPoint();
    }
  } 
  
  void setLine(){
    if(list.size()<=1){    
    }
    else{
      //CONNECT FIRST POINT TO NEXT POINT UNTIL THE LATEST POINT
      for(int i = 0; i < list.size()-1; i++){
        stroke(255);
        line(list.get(i).x,list.get(i).y,list.get(i+1).x,list.get(i+1).y);
      }
      
      //CONNECT THE LAST POINT WITH FIRST POINT
      line(list.get(list.size()-1).x,list.get(list.size()-1).y,list.get(0).x,list.get(0).y);
    }

  }
  
  void setPolygon(){
    if(list.size()<=1){

    }
    else{
      //MAKE A POLYGON BASED ON THE POINTS
      fill(178, 96, 107);
      beginShape();
      for(int i = 0; i < list.size()-1; i++){
        vertex(list.get(i).x,list.get(i).y);
        vertex(list.get(i+1).x,list.get(i+1).y);
      }
      endShape();
    }
  }
 
 //////////////////////////////////////////////////////////////////////////////////////////////////////////
  void run(){
    setPolygon();
    setLine(); 
    setPoint(); 
  } 
}


  