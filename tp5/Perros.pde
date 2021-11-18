class Perros {

  Perro[] tras;
  int i;
  Perros () {

    tras = new Perro[4];
    for (i=0; i<4; i++)
      tras[i] = new Perro((i*115)+50);
  }

  void dibujar() {

    for (i=0; i<4; i++)
      tras[i].dibujar();
  }


  float posXp(int i) {
    return tras[i].Px();
  }

  float posYp(int i) {
    return tras[i].Py();
  }
}
