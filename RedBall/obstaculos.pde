

class Obstaculos{
 int posX; 
 
  Obstaculos(int tposX){
   posX=tposX; 
  }
  
  void aparecer(){
    image(cactus,posX,455,25,45);
  }
  
  void mover(){
    posX-=10;
    if(posX<=0){
      posX=1250;
    }
    if(x+25==posX){
   radio=0;
  }
  }
}
