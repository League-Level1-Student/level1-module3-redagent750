PImage Frog;
PImage FrogBackground;
PImage rCar;
PImage lCar;
PImage rCar2;
PImage lCar2;
PImage gameover;

PImage heart;
PImage bHeart;
PImage heart2;
PImage heart3;
PImage bHeart2;
PImage bHEart3;
int FrogX = 375;
int FrogY = 440;

int CarX = 100;
int  CarY = 230;


int CarXX = 300;
int CarYY = 300;

int CarXXX = 200;
int CarXXXX = 240;

int CarYYY = 165;
int CarYYYY = 100;

int counter  = 3;

int hx1 = 10;
int hx2 = 10;
int hx3 = 10;
//void move(){
  
//}

void setup(){
Frog = loadImage("frog.png");
FrogBackground = loadImage("froggerBackground.png");
rCar = loadImage("carRight.png");
lCar = loadImage("carLeft.png");

rCar2 = loadImage("carRight.png");
lCar2 = loadImage("carLeft.png");
heart = loadImage("heart.png");
heart2 = loadImage("heart.png");
heart3 = loadImage("heart.png");
gameover = loadImage("gameover.jpg");
size(800,500);
FrogBackground.resize(800,500);
Frog.resize(75,75);
rCar.resize(100,100);
lCar.resize(100,100);
rCar2.resize(100,100);
lCar2.resize(100,100);
heart.resize(50,50);
heart2.resize(50,50);
heart3.resize(50,50);
gameover.resize(800,500);
}

void onHit(int carX,int carY){
  
    println(abs(FrogY-carY));
 // if(abs(FrogX-carX)<=Frog.width/2 && abs(FrogY-(carY-(lCar.height/2)))<=Frog.height/4){
    if ((FrogY > carY) && (FrogY < carY+50) &&(FrogX > carX) && (FrogX < carX+ 100)){
    FrogY = 440;
    FrogX  = 375;
    counter = counter - 1;
    }
}


void draw(){
  image(FrogBackground,0,0);
  image(Frog,FrogX,FrogY);
 image(rCar,CarX, CarY);
 image(lCar,CarXX,CarYY);
image(lCar2,CarXXX,CarYYY);
image(rCar2,CarXXXX,CarYYYY);

 
 CarXXX = CarXXX - 12;
  CarXXXX = CarXXXX + 17;
 CarX = CarX + 10;
 
onHit(CarX,CarY);
  onHit(CarXX,CarYY);
   onHit(CarXXX,CarYYY);
    onHit(CarXXXX,CarYYYY);
    
 if(counter>=1){
image(heart,600,10);
 }
 if(counter>=2){
   image(heart2,650,10);
 }
 if(counter>=3){
 image(heart3,700,10);
 }
 
if (counter==0){
image(gameover,0,0);
}
  if(CarXXXX>=800){
 CarXXXX = 0;
 }
 if(CarXXX<=0){
 CarXXX = 800;
 }
 if(CarX==800){
 CarX = 0;
 }
 CarXX = CarXX - 10;
 if(CarXX==0){
 CarXX = 800;
 }
 if(FrogX <= 0){
   FrogX = 1;
}
if(FrogX>=700){
  FrogX = 690;
}
if(FrogY >= 450){
FrogY = 440;
}
if(FrogY <= 0){
FrogY = 10;
}





}
//boolean intersects(Car rCar) {
 //if ((frogY > car.getY() && frogY < car.getY()+50) &&
   //             (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   //return true;
  //}
 //else  {
 // return false;
 //}




void keyPressed(){
    print(keyCode);
    if(key == CODED){
        if(keyCode == UP)
        {
          FrogY = FrogY - 62;
            //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
          FrogY = FrogY + 62;
            //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
          FrogX = FrogX + 62;
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
          FrogX = FrogX - 62;
            //Frog X position goes left
        }
        else if(keyCode == 82)
        {
        counter = 3;
        hx1 = 10;
        hx2 = 10;
        hx3 = 10;
        
        }
}
}
