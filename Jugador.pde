class Jugador {
  int posX, posY, tam;


  Jugador(int p_posX, int p_posY, int p_tam) {

    posX = p_posX;
    posY = p_posY;
    tam= p_tam;
  }

  void dibujar() {


    image(controlador.imagenes[24], resize.escX(posX), resize.escY(posY), tam, tam);
  }



  void teclaPresionada() {

    if (keyCode == UP) {

      if ( resize.escY(posY)>tam) {
        posY = posY - tam/2;
      }
    } else if (keyCode == DOWN) {

      if ( resize.escY(posY)<height - tam) {
        posY = posY + tam/2;
      }
    } else if (keyCode == LEFT) {

      if (resize.escX(posX)> tam/12) {
        posX = posX - tam/2;
      }
    } else if (keyCode == RIGHT) {

      if (resize.escX(posX)< width -tam/12) {
        posX = posX + tam/2 ;
      }
    }
  }



  boolean haGanado() {
    if (resize.escY(posY) <= tam*2) {
      return true;
    } else {
      return false;
    }
  }
}
