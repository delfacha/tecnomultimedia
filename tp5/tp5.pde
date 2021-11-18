//Sorribes, Delfina: https://youtu.be/QoG9FWwt3GU 
//Cassani Bautista: 
//TP5 2021

//declaramos
Juego game;
void setup() {
  size(800, 600);
  game = new Juego();
}

void draw() {
  game.dibujar();
}

void keyPressed() {
  game.teclado();
}
