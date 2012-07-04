/**
 * Pongcessing  
 * The classic game of Pong, coded in Processing 1.5.1.
 * Authored by Benjamin Kruger. bekroogle@gmail.com
 */
 
void setup() {
    size(W, H);
}

void splashScreen() {
    rect(0,0,W-1,H-1);
}

void draw() {
  drawBackground();
  splashScreen();
  rect(0,0,PADDLE_WIDTH, PADDLE_HEIGHT);
}

void drawBackground() {
  background(0,0,0);  
}

private static final int W = 800;
private static final int H = 400;
private static final float PADDLE_HEIGHT = 40.f;
private static final float PADDLE_WIDTH = 20.f;

