float x, y;          // Posición de la pelota
float velocidadX;    // Velocidad horizontal
float velocidadY;    // Velocidad vertical
float diametro;      // Tamaño de la pelota

void setup() {
  size(800, 600);    // Tamaño de la ventana
  x = width/2;       // Posición inicial en el centro
  y = height/2;
  velocidadX = 3;    // Velocidad inicial
  velocidadY = 2;
  diametro = 50;     // Tamaño de la pelota
}

void draw() {
  background(0);     // Fondo negro
  
  // Dibujar la pelota
  fill(255, 0, 0);   // Color rojo
  ellipse(x, y, diametro, diametro);
  
  // Mover la pelota
  x += velocidadX;
  y += velocidadY;
  
  // Rebotar en los bordes horizontales
  if (x > width - diametro/2 || x < diametro/2) {
    velocidadX *= -1;
  }
  
  // Rebotar en los bordes verticales
  if (y > height - diametro/2 || y < diametro/2) {
    velocidadY *= -1;
  }
}
