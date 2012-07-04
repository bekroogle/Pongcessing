/**
 * Pongcessing  
 * The classic game of Pong, coded in Processing 1.5.1.
 * Authored by Benjamin Kruger. bekroogle@gmail.com
 */
 
void setup() {
  size(W, H);
  noStroke();
  smooth();
  
  player = new Paddle(Paddle.X_OFFSET, (H - Paddle.HEIGHT) / 2,
                      Paddle.WIDTH, Paddle.HEIGHT);

  machine = new Paddle(W - (Paddle.WIDTH + Paddle.X_OFFSET),
                            (H - Paddle.HEIGHT) / 2,
                            Paddle.WIDTH, Paddle.HEIGHT);
  b = new Ball((W) / 2, (H) / 2,
                Ball.DIAMETER, Ball.DIAMETER); 
  paused = true;
  playersPoints = 0;
  machinesPoints = 0;

}

void pauseScreen() {
  fill(255,255,255,64);
  rect(OVERLAY_MARGIN, OVERLAY_MARGIN, 
        width - (OVERLAY_MARGIN * 2),
        height - (OVERLAY_MARGIN * 2));
  
}

void draw() {
  fill(0,255,0,255);
  drawBackground();
  
  player.display();
  machine.display();
  b.display();
  if (!paused) {
    update();
  } else {  
    pauseScreen();
  }
}

void update() {
  b.update();
  player.update();
//  machine.update();

  if (b.getPos().x >= width) {
    playersPoints++;
    b = new Ball((W) / 2, (H) / 2,
                Ball.DIAMETER, Ball.DIAMETER); 
    paused = true;
  } else if (b.getPos().x <= 0) {
    machinesPoints++;
    b = new Ball(W / 2, (H + Ball.DIAMETER) / 2,
                Ball.DIAMETER, Ball.DIAMETER); 
    paused = true;
  }
  
}

void drawBackground() {
  background(0,0,0);
  stroke(0,255,0); 
  noFill();
  ellipse((width)/2, (height)/2, 200, 200);
  line(width/2, 0, width/2, height);
  fill(0,255,0);
  noStroke(); 
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

private int playersPoints, machinesPoints;

private boolean paused;

private static final int W = 800;
private static final int H = 400;
private static final int OVERLAY_MARGIN = 10;

