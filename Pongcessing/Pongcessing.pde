/**
 * Pongcessing  
 * The classic game of Pong, coded in Processing 1.5.1.
 * Authored by Benjamin Kruger. bekroogle@gmail.com
 */
 
void setup() {
  size(W, H);
}

void splashScreen() {
  fill(50,0,0,127);

  
}

void draw() {
  fill(255,255,255,255);
  drawBackground();

  splashScreen();

}

void drawBackground() {
  background(0,0,0);  
}

private GameObject r;

private static final int W = 800;
private static final int H = 400;
private static final float PADDLE_HEIGHT = 40.f;
private static final float PADDLE_WIDTH = 20.f;

