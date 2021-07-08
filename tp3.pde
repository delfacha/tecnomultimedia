//Sorribes Delfina
//legajo 88287/8

int a=50, d=100;
float abc;
 
void setup() {
  size(600,600);
  rectMode (CENTER);
}
 
void draw() {
  background(0);
  for (int j=0; j<3; j++) {
    if (j==0) fill(255,0,0);
    if (j==1) fill(0,255,0);
    if (j==2) fill(0,0,255);
    for (int i=0; i<d; i++) {
      float jjj = PI/a*i;
      float x = map (j, 0, 2, width/2, mouseX) + j*6 + cos(jjj)*d ;
      float y = map (j, 0, 2, height/2, mouseY) + sin(jjj)*d  ;
      pushMatrix();
      translate(x, y);
      rotate(abc);
      
      abc += 0.0001;
      
      float dd=d*2;
      arc(0, 0, dd, dd, 0, radians(2));
      popMatrix();
    }
    
  }
}

void mousePressed(){
   abc=0; 
}
