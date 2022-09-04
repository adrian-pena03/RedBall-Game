int s;
int m;
int rectstartx=389;
int rectstarty=39;
int sizestart=100;
PImage fondo;
PImage cactus;
int x=30;
int y=475; 
int radio=50;
boolean crono=true;
boolean banderazo=false;
PFont game;
Obstaculos obs1;
Obstaculos obs2;
Obstaculos obs3;
Obstaculos obs4;

Reinicio ronda;


void setup(){
 size(700,700); 
 fondo = loadImage("fondo.jpg");
 cactus = loadImage("obstac.png");
 obs1 = new Obstaculos(500);
 obs2 = new Obstaculos(700);
 obs3 = new Obstaculos(900);
 obs4 = new Obstaculos(1100);
 game = createFont("gameover.ttf", 200);
 textFont(game);
 ronda = new Reinicio(0,0,true,30,475,50);
 
} 


void draw(){
  image(fondo,0,0,700,500);
  fill(15,144,52);
  rect(0,500,700,200);
  fill(0,255,0);
  rect(153,236,rectstartx,rectstarty);
  fill(0);
  textSize(sizestart);
  text("Press Space to start",160,270);
  
  if(keyPressed){
   if(key == ' '){
    banderazo=true;
    sizestart=1;
    rectstartx=0;
    rectstarty=0;
   }
  }
  if(banderazo == true){
  ronda.aparecer();
  }
  if(keyPressed && radio==0){
   if(key=='r'){
    banderazo=true; 
   }
  }
}
