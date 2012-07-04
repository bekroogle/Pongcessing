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
  b = new Ball((W + Ball.DIAMETER) / 2, (H + Ball.DIAMETER) / 2,
                Ball.DIAMETER, Ball.DIAMETER); 
}

void splashScreen() {
  fill(50,0,0,127);

  
}

void draw() {
  fill(255,255,255,255);
  drawBackground();
  player.display();
  machine.display();
  b.display();
  splashScreen();

}

void drawBackground() {
  background(0,0,0);  
}

private Paddle player, machine;
private Ball b;

private static final int W = 800;
private static final int H = 400;


