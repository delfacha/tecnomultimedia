class Juego {
  String estado;
  PImage ini, per, gan;
  Fondo fondo;
  Personaje personaje;
  Perros perro;
  int i;
  String jugar, perdiste, ganaste;
  PFont font;

  Juego() {
    // pos Inicial del personaje:
    fondo= new Fondo();
    personaje= new Personaje ();
    perro= new Perros();
    //cargamos imagenes 
    ini= loadImage( "comenzar.png");
    per= loadImage( "perdiste.png");
    gan= loadImage( "ganaste.png");
    estado = "inicio";
    jugar = "          Haz click para comenzar a jugar \n ¡LLEGA A LA META SIN TOPARTE CON LOS PERROS!";
    perdiste= "X";
    ganaste= "X";
    font = createFont ("Pixel.ttf", 27);
  }



  void colision() {


    for (i=0; i<4; i++) {
      if (dist(personaje.Px(), personaje.Py(), perro.posXp(i), perro.posYp(i)) < 60)
        estado = "perdiste";
    }
  }


  void ganaste() {

    if (personaje.Px() > 748)
      estado = "ganaste";
  }


  void dibujar() {
    if (estado == "inicio") {
      image(ini, 0, 0, width, height);
      textSize(30);
      textFont(font);
      text( jugar, 40, 450);
      if (mousePressed)
        estado = "nivel1";
    } else
      if (estado == "nivel1") {
        fondo.dibujar();
        perro.dibujar();
        personaje.dibujar();
        colision();
        ganaste();
      } else
        if (estado == "perdiste") {
          image(per, 0, 0, width, height);
          fill (0);
          rect(10, 15, 45, 45);
          textFont(font);
          fill (255);
          text(perdiste, 26, 47);
          if (mousePressed) {
            estado = "inicio";
            personaje= new Personaje ();
            perro= new Perros();
          }
        } else
          if (estado == "ganaste") {
            image(gan, 0, 0, width, height);
            fill(#ff3190);
            rect(10, 15, 45, 45);
            textFont(font);
            fill(255);
            text(ganaste, 26, 47);
            if (mousePressed) {
              estado = "inicio";
              personaje= new Personaje ();
              perro = new Perros();
            }
          }
  }

  void teclado() {
    personaje.mover();
  }
}
