//caracter picture
PImage img;
PImage img2;
//variables
int y=10;
int y2=10;
boolean reset=false;
//image loading andd setup
void setup() {
  size(500, 1000);
  img = loadImage("img2.jpg");
  img2 = loadImage("img3.png");
}
void draw() {
  reset=false;

  //reset button
  fill(255);
  background(0);
  rect(200, 200, 50, 50);
  textSize(50);
  fill(0);
  text("r", 220, 240);
  //game character

  image(img2, 100, y);
  image(img, 400, y2);
  //win settings
  if (y >=1000) {
    textSize(50);
    fill(255);
    text("p1 wins", 250, 500);
  }
  if (y2 >=1000) {

    textSize(50);
    fill(255);
    text("p2 wins", 250, 500);
  }
  //reset function
  if (mouseX>200&&mouseX<300&&mouseY>200&&mouseY<300) {
    y=10;
    y2=10;
  }
}
//win condition
void mouseReleased() {
  //caracter movment
  delay(1);
  if (y >=1000) {
    textSize(50);
    fill(255);
    text("p1 wins", 250, 500);
  }
  if (y2 >=1000) {
    background(255);
    textSize(50);
    fill(255);
    text("p2 wins", 250, 500);
  }
}
//caracter movement
void keyPressed() {
  if (key == 's') {
    background(0);
    y=y+10;
    image(img2, 100, y);
  } else {
    background(0);
    image(img2, 100, y);
    image(img, 400, y2);
  }
  if (key == 'g') {
    background(0);
    y2=y2+10;
    image(img, 400, y2);
  } else {
    background(0);
    image(img2, 100, y);
    image(img, 400, y2);
  }
}
