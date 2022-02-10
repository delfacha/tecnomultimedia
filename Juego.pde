class Juego {

  int estado;
  int cantImagenes = 6;
  PImage [] imagenes = new PImage [cantImagenes];
  VideoJuego videoJuego;


  Juego() {

    inicializar();
  }

  void dibujar() {

    if (estado == 0) {
      dibujoPantallaInicio();
    } else if (estado == 1) {
      dibujoVideoJuego();
    } else if (estado == 2) {
      dibujoHaGanado();
    } else if (estado == 3) {
      dibujoHaPerdido();
    }
  }

  void teclaPresionada() {

    if (estado == 0) {
      estado = 1;
    } else if (estado == 1) {
      videoJuego.teclaPresionada();
    } else if (estado == 2) {
      controlador.pantallaActual = controlador.pantallas[19];
      inicializar();
    } else if (estado == 3) {
      controlador.pantallaActual = controlador.pantallas[20];
      inicializar();
    }
  }







  void dibujoPantallaInicio() {
    rect(0, 0, resize.escX(800), resize.escY(600));
    image(controlador.imagenes[28], 0, 0, resize.escX(800), resize.escY(600));
    fill(255);
    textAlign(CENTER);
    textSize( resize.escTxt(40));
    text("¡CORRE!\n  Trata de que el perro no te agarre \n\n\n\n\n\n\n\n\n Presiona cualquier tecla para iniciar", width/2, height/5);
  }


  void dibujoVideoJuego() {

    fill(255);
    image(controlador.imagenes[27], 0, 0, resize.escX(800), resize.escY(600));
    videoJuego.dibujar();
    if (videoJuego.controlarGanarOPerder() == 2) {

      estado = 2;
    } else if (videoJuego.controlarGanarOPerder() == 3) {
      estado = 3;
    }
  }




  void dibujoHaGanado() {

    rect(0, 0, resize.escX(800), resize.escY(600));
    image(controlador.imagenes[29], 0, 0, resize.escX(800), resize.escY(600));
    textAlign(CENTER);
    textSize( resize.escTxt(40));
    fill(255);
    text("¡Fuiste adoptado!\n\n\n\n Presiona cualquier tecla para continuar", width/2, height/5);
  }


  void dibujoHaPerdido() {
    rect(0, 0, resize.escX(800), resize.escY(600));
    image(controlador.imagenes[30], 0, 0, resize.escX(800), resize.escY(600));
    textAlign(CENTER);
    textSize( resize.escTxt(40));
    fill(255);
    text("¡Perdiste!\n El perro te atrapó \n\n\n\n Presiona cualquier tecla para continuar", width/2, height/5);
  }

  void  inicializar() {


    videoJuego= new VideoJuego();

    estado = 0;
  }
}
