//Sorribes Delfina
// Legajo 88287/8

Resize resize = new Resize();
Controlador controlador;

void setup() {
  surface.setResizable(true);
  size(800, 600);
  controlador = new Controlador(this);
}

void draw() {
  background(200);
  controlador.dibujar();
}

void mouseClicked() {
  controlador.mouseClicked();
}


void keyPressed() {
  controlador.teclaPresionada();
}
