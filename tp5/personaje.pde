class Personaje {
  PImage [] img;
  int cantCuadros;
  int x, y, d;

  Personaje () {
    x= 50;
    y= 80;
    cantCuadros = 6;
    img = new PImage [cantCuadros];
    for (int i=0; i <cantCuadros; i ++) {
      img [i] =loadImage("gato/img_"+nf(i, 2)+".png");
    }
  }




  void dibujar () {
    image(img[(frameCount)%cantCuadros], x, y, 80, 90);
  }


  void mover() {

    if (( keyCode== UP) && (y > 80))
      y = y - 105;

    if ((keyCode== DOWN) && (y < 300))
      y = y + 105;

    if ((keyCode== LEFT) &&(x > 1))
      x= x - 5;
    if ((keyCode== RIGHT) &&(x < 750))
      x= x + 5;
  }



  int Px() {
    return x;
  }

  int Py() {
    return y;
  }
}
