class Contador {
  int  contador, posX, posY;


  Contador(int p_posX, int p_posY) {
    contador = 0;
    posX = p_posX;
    posY = p_posY;
  }


  void dibujar() {
    textSize(resize.escTxt(15));
    fill(0);
    text("intentos:" + contador, resize.escX(posX), resize.escY(posX));
  }


  void incrementar() {
    contador++;
  }

  boolean haPerdido() {
    if (contador == 3) {
      return true;
    } else {
      return false;
    }
  }
}
