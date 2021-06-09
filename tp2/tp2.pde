//Sorribes Delfina
//legajo 88287/8

int click = 0;
PFont font;
float x ;
PImage foto;
 PImage fotox;
PImage fotoxd;
PImage fotoxx;
PImage fot;

void setup (){

size(600,400);
x=400;
font = createFont("unknown.png.ttf",27);
   textFont(font);
   textAlign (CENTER);  
  foto = loadImage ("abcd.png");
  fotox = loadImage ("abcdefgh.png");
  fotoxd = loadImage ("abcde.png");
  fotoxx = loadImage ("abcdef.png");
  fot= loadImage ("abcdefg.png");
}

void draw() {
  
  if (click == 0 ) {
  background(220,220,41);
  fill(255);
  text(" haga click para comenzar", 294, 170);
}else if ( click == 1) {
  background (0);
println(mouseX + ":" + mouseY);

  fill(220, 220, 41);
  text("Directed and Produced by:",230, 50+x);
  fill(255);
  text("Stephen Hillenburg", 230, 100 + x);
  fill(220, 220, 41); 
  text("Written and boarder by:", 300, 700 + x);
  fill(255);
  text("Derek Drymon &\nTim Hill &\nStephen Hillenburg &\n Kent Osborne &\nAaron Springer &\nPaul Tibbitt",300, 750 + x);
 fill(220, 220, 41);
  text("Based on a Story\nand the Series Created by",250,1300 + x);
  fill (255);
  text("Stephen Hillenburg",250,1400 + x);
  fill(220, 220, 41);
  text("Producer", 82,2000 + x);
  fill(255);
  text("Julia Pistor",132, 2050 + x);
  fill(220, 220, 41);
  text("Executive Producer",212,2400 + x);
  fill(255);
  text("Albie Hecht",163,2450 + x);

  
  image (foto, 350, 120 + x , 230, 200);
  image (fotox, 104, 142 + x);
   image (fotox, 30, 700 + x); 
   image (fotox, 444, 700 + x);
image (fotoxd, 365, 1410 + x, 230,200);
  image (fotoxx, 328, 1880 + x, 220,180);
  image (fot, 229, 2458 + x, 230,200);
  
  
  x = x- 1; } }
  
  void mousePressed() {
    if (click==0){
      click = 1; }
    }
 
