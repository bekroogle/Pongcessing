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
  paused = true;

}

void splashScreen() {
  rect(50,0,0,255);

  
}

void draw() {
  fill(255,255,255,255);
  drawBackground();
  
  player.display();
  machine.display();
  b.display();
  if (!paused) {
    update();
  } else {  
    splashScreen();
  }
}

void update() {
  b.update();
  player.update();
//  machine.update();
}

void drawBackground() {
  background(0,0,0);  
}

void keyPressed() {
  if (key == 'p') {
    togglePause();
  }
}  

void togglePause() {
  if (paused) {
    paused = false;
  } else {
    paused = true;
  }
}


private Paddle player, machine;
private Ball b;
private boolean pPressed;
private boolean pLastFrame;
private boolean paused;

private static final int W = 800;
private static final int H = 400;


