class Perro {

  float x, y, tam, vel;
  PImage [] img;
  int cantCuadross;

  Perro (int _y) {
    tam = 130;
    x= random(400, 1030);
    y= _y;
    cantCuadross = 3;
    img = new PImage [cantCuadross];
    for (int i=0; i <cantCuadross; i ++) {
      img [i] =loadImage("perro/imgs_"+nf(i, 2)+".png");
      vel = random(60, 80);
    }
  }

  void dibujar() {

    x = x - random(vel);
    image(img[(frameCount)%cantCuadross], x, y, tam, tam-2);
    if (x < -100) {
      x= random(800, 1030);
      vel = random(25, 30);
    }
  }

  float Px() {
    return x;
  }

  float Py() {
    return y;
  }
}
