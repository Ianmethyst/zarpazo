SistemaPelea combat;
Nivel nivel;
Menu menu;
BarraVida barraVidaJugador;
BarraVida barraVidaEnemigo;

void setup() {

  //size(1366, 768);
  fullScreen();

   nivel = new Nivel();
   menu = new Menu();
   barraVidaJugador = new BarraVida();
   barraVidaEnemigo = new BarraVida();
  //-------------------------------------------------------------------------------------------------------------------------------------

  // Tipografía 
  inicializarFuentes();

  // Imagenes
  cargarImagenes();

  // Arduino

  //-------------------------------------------------------------------------------------------------------------------------------------
  // Se llama a que se declaren las condiciones iniciales necesarias para el sistema de pelea.
  inicializacion();
  //-------------------------------------------------------------------------------------------------------------------------------------
}


void draw() {

  //-------------------------------------------------------------------------------------------------------------------------------------
  if (nivel.nivelActual==0) {
    menu.TitleScreen();
  } 

  //-------------------------------------------------------------------------------------------------------------------------------------
  if (keyPressed && nivel.nivelActual == 0) {
    background(0);
    nivel.nivelActual=1;
  }

  //-------------------------------------------------------------------------------------------------------------------------------------
  imageMode(CORNER);
  if (nivel.nivelActual==1) {
    nivel.nivel(Escenario2, Xolotl);
  }
}