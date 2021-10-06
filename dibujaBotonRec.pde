}
void dibujaBotonRec(String label,float x, float ancho){
 pushStyle();
  pushMatrix();
  
  translate(x,height-30);
  noFill();
  stroke(255);
  rect(0,0,ancho,30);
  fill(255);
  textAlign(LEFT);
  textFont(font);
  textSize(13);
  text(label,0+5,0+22);
  
  popMatrix();
  popStyle();
  
}
void dibujaBotonRec(String label,float x, float y, float ancho,float alto){
  pushStyle();
  pushMatrix();
  
  translate(x, y);
  noFill();
  stroke(255);
  rect(0,0,ancho,alto);
  fill(255);
  textAlign(LEFT);
  textFont(font);
  textSize(13);
  text(label,0+5,0+22);
  
  popMatrix();
  popStyle();

}
//Colision con boton cuadrado
boolean colisionSupRec(float x, float y, float xSup, float ySup, float ancho,float alto){
  
  boolean valor;
  
  if(x>xSup && y>ySup && x<xSup+ancho && y<ySup+alto){
    valor = true;
  }
  else {
    valor = false;
  }
  return valor;
}
