class Enemigo {
  int posX, posY, dirX, tam;


  Enemigo(int p_posX, int p_posY, int p_dirX, int p_tam) {
    posX = p_posX;
    posY = p_posY;
    dirX = p_dirX;
    tam= p_tam;
  }

  void dibujar() {

    image(controlador.imagenes[26], resize.escX(posX), resize.escY(posY), resize.escTxt(tam), resize.escTxt(tam));


    //movimiento del enemigo que a ejecutarse desde el momento en el que se dibuja

    if (resize.escX(posX) < tam/12|| resize.escX(posX) > width-tam) {
      dirX = dirX * -1;
    }
    posX = posX + dirX + dirX +  dirX;
  }


  void rebotar () {

    if (random(0, width)>width/2) {
      dirX = 1;
    } else {
      dirX = -1;
    }
  }
}
