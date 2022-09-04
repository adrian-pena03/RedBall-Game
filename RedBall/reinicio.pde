class Reinicio{
 
  Reinicio(int ts,int tm,boolean tcrono,float x,float y, int radio){
    s=ts;
    m=tm;
    crono=tcrono;
  }
  
  void aparecer(){
   if(crono == true){
  if(s<=46){
   textSize(200);
   text(m+":"+s,50,100);
   s+=1;
  }else{
   m+=1;
   s=0;
   text(m+":"+s,50,100);
  }
  
  }
  fill(255,0,0);
  ellipse(x,y,radio,radio);
  if(keyPressed && x<=675 && x>=25 && y<=475 && y>=390){
   if(key=='w'){
     y-=30;
   }
   if(key=='s'){
     y+=4;
   }
   if(key=='d'){
     y=475;
     x+=6;
   }
   if(key=='a'){
     y=475;
     x-=6;
   }
  }else{
    if(y>475){
     y=475; 
    }
    if(y<390){
     y=475; 
    }
    if(x>675){
     x=675; 
    }
    if(x<25){
     x=25; 
    }
  }
 
 obs1.aparecer();
 obs1.mover();
 obs2.aparecer();
 obs2.mover();
 obs3.aparecer();
 obs3.mover();
 obs4.aparecer();
 obs4.mover();
 if(radio==0){
  fill(255,0,0);
  textSize(200);
  text("GAME OVER",120,200); 
  crono=false;
 } 
  }
  
}
