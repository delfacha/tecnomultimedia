class VideoJuego {
  Jugador jugador;
  Contador contador;
  int cantidadEnemigos = 10;
  int tam = height/cantidadEnemigos;

  int [] posX = new int [cantidadEnemigos];
  int [] dirX = new int [cantidadEnemigos];
  Enemigo [] enemigos = new Enemigo [cantidadEnemigos];


  VideoJuego() {

    inicializar();
  }

  void dibujar() {

    dibujoVideoJuego();
  }

  void teclaPresionada() {

    jugador.teclaPresionada();
  }

  int generarPosEnemigo() {

    return round(random(tam, width-tam));
  }

  void generarDirEnemigo() {


    for (int h=3; h < cantidadEnemigos-1; h++) {

      if (random(0, width)>width/2) {
        dirX[h] = 1;
      } else {
        dirX[h] = -1;
      }
    }
  }


  void mover() {

    for (int i=3; i < cantidadEnemigos-1; i++) {
      enemigos[i].rebotar();
    }
  }

  int inicializarPosXJugador() {

    return width/2;
  }

  int inicializarPosYJugador() {

    return height - tam;
  }


  void dibujarEnemigos() {

    for (int i=3; i < cantidadEnemigos-1; i++) {
      enemigos[i].dibujar();

      if (dist(resize.escX(jugador.posX), resize.escY(jugador.posY), resize.escX(enemigos[i].posX), resize.escY(enemigos[i].posY))<tam) {
        jugador.posX = inicializarPosXJugador();
        jugador.posY = inicializarPosYJugador();
        contador.incrementar();
      }
    }
  }



  void dibujoVideoJuego() {
    dibujarEnemigos();
    jugador.dibujar();
    contador.dibujar();
    controlarGanarOPerder();
  }


  int controlarGanarOPerder() {

    if (jugador.haGanado()) {
      return 2; //gané
    } else if ( contador.haPerdido()) {
      return 3; //perdí
    }
    return 0; // ninguna de las 2
  }




  void  inicializar() {


    jugador = new Jugador(inicializarPosXJugador(), inicializarPosYJugador(), height/cantidadEnemigos);
    contador = new Contador(50, 50);


    for (int i=3; i < cantidadEnemigos-1; i++) {
      enemigos[i] = new Enemigo( generarPosEnemigo(), i*tam, dirX[cantidadEnemigos-1], tam);
      enemigos[i].rebotar();
    }
  }
}
