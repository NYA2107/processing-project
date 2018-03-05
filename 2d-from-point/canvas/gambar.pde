class Gambar{
  ArrayList<Titik> list = new ArrayList();
  
  void buatTitik(int x, int y, int size, String name){
    list.add(new Titik(x,y,size,name + (list.size()+1)));
  } 
  
  void letakkanTitik(){
    for(int i = 0; i < list.size(); i++){
      list.get(i).gambarTitik();
    }
  } 
  
  void letakkanGaris(){
    if(list.size()<=1){    
    }
    else{
      //MENGHUBUNGKAN TITIK PERTAMA SECARA BERURUTAN SAMPAI TITIK TERAKHIR
      for(int i = 0; i < list.size()-1; i++){
        stroke(255);
        line(list.get(i).x,list.get(i).y,list.get(i+1).x,list.get(i+1).y);
      }
      
      //MENGHUBUNGKAN TITIK TERAKHIR DANGAN TITIK PERTAMA
      line(list.get(list.size()-1).x,list.get(list.size()-1).y,list.get(0).x,list.get(0).y);
    }

  }
  
  void letakkanPolygon(){
    if(list.size()<=1){

    }
    else{
      //MEMBUAT BIDANG MENURUT TITIK-TITIK YANG TELAH DIBUAT
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
    letakkanPolygon();
    letakkanGaris(); 
    letakkanTitik(); 
  } 
}


  