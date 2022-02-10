class Controlador {

  PFont fuente1;
  Creditos creditos;

  int cantImagenes = 31;
  PImage [] imagenes = new PImage [cantImagenes];

  int cantTextos = 30;
  String[] textos = new String [cantTextos];

  int cantidadPantallas = 21;
  PImage [] fondos = new PImage [cantidadPantallas];

  Pantalla pantallaActual;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  Juego juego;







  Controlador(PApplet pro) {






    inicializarTextos();
    inicializarImagenes();
    inicializarFuente();


    int pantalla;
    Boton boton1, boton2;




    //Creo la pantalla 0


    pantalla = 0;
    boton1 = new Boton (textos[0], 310, 90, 1, imagenes[23], textos[28], 2, 2, 30, 180, 38);
    boton2 = new Boton(textos[1], 310, 490, 5, imagenes[23], textos[28], 2, 2, 30, 180, 38);
    pantallas[pantalla] = new Pantalla(imagenes[5], imagenes[23], textos[28], textos[28], 0, 0, boton1, boton2, null, null);

    //Creo la pantalla 1  caja
    pantalla = 1;
    boton1 = new Boton (textos[4], 450, 75, 2, imagenes[23], textos[28], 265, 110, 20, 110, 30);
    boton2 = new Boton(textos[5], 650, 75, 3, imagenes[23], textos[28], 245, 110, 20, 110, 30);
    pantallas[pantalla] = new Pantalla(imagenes[1], imagenes[2], textos[28], textos[2], 188, 46, boton1, boton2, null, null);

    //Creo la pantalla 2   gato sale
    pantalla = 2;
    boton1 = new Boton(textos[29], 650, 75, 4, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[4], imagenes[2], textos[28], textos[7], 207, 46, boton1, null, null, null);

    //Creo la pantalla 3  gato se queda
    pantalla = 3;
    boton1 = new Boton(textos[29], 650, 75, 4, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[3], imagenes[2], textos[28], textos[6], 257, 46, boton1, null, null, null);

    //Creo la pantalla 4  hambre
    pantalla = 4;
    boton1 = new Boton (textos[4], 450, 75, 7, imagenes[23], textos[28], 255, 107, 20, 100, 30);
    boton2 = new Boton(textos[5], 650, 75, 6, imagenes[23], textos[28], 255, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[6], imagenes[2], textos[28], textos[8], 224, 46, boton1, boton2, null, null);

    //Creo la pantalla 5 (creditos)
    pantalla = 5;
    creditos = new Creditos(textos[16], 400, 550, 0);
    boton2 = new Boton(textos[17], 650, 530, 0, imagenes[23], textos[28], 265, 110, 20, 110, 30);
    pantallas[pantalla] = new Pantalla(imagenes[25], imagenes[23], textos[28], textos[28], -1, -1, null, boton2, creditos, null);

    //Creo la pantalla 6 hambre X2
    pantalla = 6;
    boton1 = new Boton (textos[4], 450, 75, 8, imagenes[23], textos[28], 255, 107, 20, 100, 30);
    boton2 = new Boton(textos[5], 650, 75, 20, imagenes[23], textos[28], 255, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[7], imagenes[2], textos[28], textos[9], 405, 46, boton1, boton2, null, null);

    //Creo la pantalla 7  casa señora
    pantalla = 7;
    boton1 = new Boton(textos[29], 650, 75, 8, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[8], imagenes[2], textos[28], textos[10], 334, 46, boton1, null, null, null);

    //Creo la pantalla 8 parque pochoclos
    pantalla = 8;
    boton1 = new Boton(textos[29], 650, 75, 9, imagenes[23], textos[28], 270, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[9], imagenes[2], textos[28], textos[11], 300, 46, boton1, null, null, null);

    //Creo la pantalla 9  parque de noche
    pantalla = 9;
    boton1 = new Boton (textos[4], 450, 75, 12, imagenes[23], textos[28], 255, 107, 20, 100, 30);
    boton2 = new Boton(textos[5], 650, 75, 10, imagenes[23], textos[28], 255, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[21], imagenes[2], textos[28], textos[12], 187, 46, boton1, boton2, null, null);

    //Creo la pantalla 10  ciudad noche
    pantalla = 10;
    boton1 = new Boton(textos[29], 650, 75, 11, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[10], imagenes[2], textos[28], textos[13], 132, 46, boton1, null, null, null);

    //Creo la pantalla 11  auto
    pantalla = 11;
    boton1 = new Boton(textos[29], 650, 75, 20, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[11], imagenes[2], textos[28], textos[14], 240, 46, boton1, null, null, null);

    //Creo la pantalla 12  parque noche dormir
    pantalla = 12;
    boton1 = new Boton(textos[29], 650, 75, 13, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[12], imagenes[2], textos[28], textos[18], 170, 46, boton1, null, null, null);

    //Creo la pantalla 13  parque dia gente
    pantalla = 13;
    boton1 = new Boton (textos[4], 450, 75, 15, imagenes[23], textos[28], 255, 107, 20, 100, 30);
    boton2 = new Boton(textos[5], 650, 75, 14, imagenes[23], textos[28], 255, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[13], imagenes[2], textos[28], textos[19], 269, 46, boton1, boton2, null, null);

    //Creo la pantalla 14 parque dia gente familia
    pantalla = 14;
    boton1 = new Boton(textos[29], 650, 75, 19, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[14], imagenes[2], textos[28], textos[20], 240, 46, boton1, null, null, null);

    //Creo la pantalla 15  parque dia gente con perro
    pantalla = 15;
    boton1 = new Boton(textos[29], 650, 75, 16, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[15], imagenes[2], textos[28], textos[21], 190, 46, boton1, null, null, null);

    //Creo la pantalla 16  casa puerta abierta
    pantalla = 16;
    boton1 = new Boton (textos[4], 450, 75, 19, imagenes[23], textos[28], 255, 107, 20, 100, 30);
    boton2 = new Boton(textos[5], 650, 75, 17, imagenes[23], textos[28], 255, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[16], imagenes[2], textos[28], textos[22], 257, 46, boton1, boton2, null, null);

    //Creo la pantalla 17  callejon
    pantalla = 17;
    boton1 = new Boton (textos[4], 450, 75, 18, imagenes[23], textos[28], 255, 107, 20, 100, 30);
    boton2 = new Boton(textos[5], 650, 75, 20, imagenes[23], textos[28], 255, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[17], imagenes[2], textos[28], textos[24], 170, 46, boton1, boton2, null, null);

    //-----------------------------------------------------------------------------------------------------------------------------

    //Creo la pantalla 18  JUEGO
    pantalla = 18;
    juego = new Juego();
    pantallas[pantalla] = new Pantalla(imagenes[23], imagenes[23], textos[28], textos[28], -1, -1, null, null, null, juego);

    //-----------------------------------------------------------------------------------------------------------------------------

    //Creo la pantalla 19  ganar
    pantalla = 19;
    boton1 = new Boton(textos[3], 20, 20, 0, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[22], imagenes[23], textos[28], textos[28], 193, 46, boton1, null, null, null);

    //Creo la pantalla 20 perder
    pantalla = 20;
    boton1 = new Boton(textos[3], 20, 20, 0, imagenes[23], textos[28], 245, 110, 20, 100, 30);
    pantallas[pantalla] = new Pantalla(imagenes[20], imagenes[23], textos[28], textos[28], 193, 46, boton1, null, null, null);



    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }







  void dibujar() {
    pantallaActual.dibujar();
  }



  void mouseClicked() {
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }

    creditos.reinicializar();
  }

  void teclaPresionada() {
    juego.teclaPresionada();
  }

  void inicializarTextos() {

    textos[0]="          Iniciar" ;
    textos[1]= "          Créditos";
    textos[2]= "Te encontras adentro de una caja" ;
    textos[3]= "Volver";
    textos[4]= "Si";
    textos[5]= "No";
    textos[6]= "Un perro empieza a oler la caja y salís corriendo";
    textos[7]= "¡Saliste! decidis ir a recorrer la ciudad";
    textos[8]= "Te agarra hambre ¿Vas a buscar comida?";
    textos[9]= "Merodear tanto por la ciudad te provocó un hambre voraz ¿Vas a buscar comida?";
    textos[10]= "Te metes en la casa de una señora mayor que te saca a escobazos";
    textos[11]= "Encontras un paquete de pochoclos tirados en una plaza";
    textos[12]= "Se hace de noche ¿Vas a dormir?" ;
    textos[13]= "Vagas por la ciudad";
    textos[14]= "Cruzas la calle y un auto te pasa por arriba";
    textos[15]= "Fin";
    textos[16]= "LAS AVENTURAS DEL GATO BLANCO\n\n\nTecno Multimedia 1\n\nComisión 3\n\nSorribes Delfina\n\n" ;
    textos[17]= "Inicio";
    textos[18]= "Te dormis abajo de un banco";
    textos[19]= "Se hizo de día y la plaza está llena de gente ¿Salis?";
    textos[20]= "Una nena te encuentra y te lleva a su casa";
    textos[21]= "Un perro comienza a perseguirte";
    textos[22]= "Ves la puerta de de una casa abierta ¿Te metes?";
    textos[23]= "te adoptan";
    textos[24]= "El perro te acorrala ¿Peleas?";
    textos[25]= "Fin";
    textos[26]= "los ruidos llaman la atención de una \n señora quien te salva";
    textos[27]= "Fin";
    textos[28]= "\n";
    textos[29]= "Siguiente";
  }


  void inicializarImagenes() {
    for (int i=1; i<cantImagenes; i++) {
      imagenes[i] = loadImage("imagen" + i + ".png");
    }
  }



  void inicializarFuente() {
    fuente1 = loadFont("fuente.vlw");
    textFont(fuente1);
  }
}
