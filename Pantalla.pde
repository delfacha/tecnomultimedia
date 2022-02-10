class Pantalla {
  Boton[] botones;
  PImage fondo;
  PImage contenedorTextoPantalla;
  String texto1Pantalla;
  String texto2Pantalla;
  int posXTexto2;
  int posYTexto2;
  Boton boton1;
  Boton boton2;
  Creditos creditos;
  Juego juego;


  Pantalla(PImage fondo, PImage contenedorTextoPantalla, String texto1Pantalla, String texto2Pantalla, int posXTexto2, int posYTexto2, Boton boton1, Boton boton2, Creditos creditos, Juego juego) {
    this.fondo = fondo;
    this.texto1Pantalla = texto1Pantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.creditos = creditos;
    this.contenedorTextoPantalla  = contenedorTextoPantalla ;
    this.posXTexto2 = posXTexto2;
    this.posYTexto2 = posYTexto2;
    this.texto2Pantalla = texto2Pantalla;
    this.juego = juego;
  }

  void dibujar() {
    textAlign(CENTER);
    image(this.fondo, 0, 0, width, height);
    image(this.contenedorTextoPantalla, 0, 0, width, height);
    textSize(resize.escTxt(23));
    fill(0);
    text(this.texto1Pantalla, resize.escX(30), resize.escY(490));
    text(this.texto2Pantalla, resize.escX(this.posXTexto2), resize.escY(this.posYTexto2));

    if (boton1 != null) {
      boton1.dibujar();
    }

    if (boton2 != null) {
      boton2.dibujar();
    }

    if (creditos != null) {
      creditos.dibujar();
      creditos.mover();
    }

    if (juego != null) {
      juego.dibujar();
    }
  }

  int mouseClicked() {
    int pantallaAIr = -1;

    if (boton1 != null) {
      pantallaAIr = boton1.mouseClicked();
    }

    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mouseClicked();
    }

    return pantallaAIr;
  }
}
