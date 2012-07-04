/**
 * Pongcessing  
 * The classic game of Pong, coded in Processing 1.5.1.
 * Authored by Benjamin Kruger. bekroogle@gmail.com
 */
 
void setup() {
  size(W, H);
  player = new Paddle(Paddle.X_OFFSET, (H - Paddle.HEIGHT) / 2,
                      Paddle.WIDTH, Paddle.HEIGHT);

  machine = new Paddle(W - (Paddle.WIDTH + Paddle.X_OFFSET),
                            (H - Paddle.HEIGHT) / 2,
                            Paddle.WIDTH, Paddle.HEIGHT); 
}

void splashScreen() {
  fill(50,0,0,127);

  
}

void draw() {
  fill(255,255,255,255);
  drawBackground();
  player.display();
  machine.display();
  splashScreen();

}

void drawBackground() {
  background(0,0,0);  
}

private Paddle player;
private Paddle machine;

private static final int W = 800;
private static final int H = 400;


