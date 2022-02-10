class Creditos {
  String texto;
  int posX, posY, pantallaAIr, ancho, alto;


  Creditos(String p_texto, int p_posX, int p_posY, int p_pantallaAIr) {

    posX = p_posX;
    posY = p_posY;
    texto = p_texto;
    pantallaAIr = p_pantallaAIr;
    ancho=100;
    alto=30;
  }



  void mover() {

    if (posY<= resize.escY(620)) {
      posY--;
    }
  }

  void dibujar() {
    textSize(resize.escTxt(20));
    fill(0);
    text(texto, resize.escX(posX), resize.escY(posY));
  }




  void reinicializar() {

    if (mouseX > resize.escX(650) && mouseX < resize.escX(650) + ancho && mouseY > resize.escY(530) && mouseY < resize.escY(530) + alto) {

      posY=  620;
    }
  }
}
