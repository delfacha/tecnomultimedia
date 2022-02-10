class Resize {
  float valor;


  Resize() {
  }


  float escX(float valor) {
    return map(valor, 0, 800, 0, width);
  }

  float escY(float valor) {
    return map(valor, 0, 600, 0, height);
  }

  float escTxt(float valor) {
    return map(valor, 0, 800, 0, width/2+height/2);
  }
}
