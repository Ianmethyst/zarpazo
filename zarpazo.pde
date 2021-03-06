// Zarpazo

Juego juego;

void setup() {
  // Se utiliza P2D como renderer para aprovechar la aceleración por hardware.
  size(1368, 768, P2D);
  //fullScreen(P2D); 
  
  background(0);

  // Se crea el objeto del juego. Todos los objetos se crean a partir de este.
  juego = new Juego();      

  // Cambiamos el espacio de color a HSB para tener más control.
  colorMode(HSB, 360, 100, 100);   


  // Tipografía.
  inicializarFuentes();

  // Imagenes.
  cargarImagenes();

  // Sonido.
  cargarSonidos();

  // Arduino.
  inicializarArduino();
}

void draw() {
  juego.dibujar();
}

// Tecla para reiniciar el juego
void keyReleased() {
  juego.debugging();
}