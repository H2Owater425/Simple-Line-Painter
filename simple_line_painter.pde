float firstXPosition = Float.NaN;
float firstYPosition = Float.NaN;
float secondXPosition = Float.NaN;
float secondYPosition = Float.NaN;
int clickCount = 0;
boolean isEPressed = false;

void setup() {
  size(1280, 720);
  strokeWeight(4);
  background(#ffffff);
}

void draw() {
  if(clickCount == 1) {
    stroke(#ff0000);
  } else if(clickCount == 2) {
    stroke(#ff7f00);
  } else if(clickCount == 3) {
    stroke(#ffff00);
  } else if(clickCount == 4) {
    stroke(#00ff00);
  } else if(clickCount == 5) {
    stroke(#0000ff);
  } else if(clickCount == 6) {
    stroke(#4b0082);
  } else if(clickCount == 7) {
    stroke(#9400d3);
  }
  if(!Float.isNaN(firstXPosition) && !Float.isNaN(firstYPosition) && !Float.isNaN(secondXPosition) && !Float.isNaN(secondYPosition)) {
    strokeWeight(4);
    line(firstXPosition, firstYPosition, secondXPosition, secondYPosition);
    firstXPosition = Float.NaN;
    firstYPosition = Float.NaN;
    secondXPosition = Float.NaN;
    secondYPosition = Float.NaN;
    if(clickCount == 7) {
      clickCount = 0;
    }
  } else if(isEPressed == true) {
    noStroke();
    fill(#ffffff);
    circle(mouseX, mouseY, 25);
  }
}

void keyPressed() {
  if(keyCode == 67) {
    background(#ffffff);
    firstXPosition = Float.NaN;
    firstYPosition = Float.NaN;
    secondXPosition = Float.NaN;
    secondYPosition = Float.NaN;
  }
  if(keyCode == 69) {
    isEPressed = true;
  }
}

void keyReleased() {
  isEPressed = false;
}

void mousePressed() {
  if(Float.isNaN(firstXPosition) && Float.isNaN(firstYPosition)) {
    firstXPosition = mouseX;
    firstYPosition = mouseY;
  }
}

void mouseReleased() {
  if(Float.isNaN(secondXPosition) && Float.isNaN(secondYPosition)) {
    secondXPosition = mouseX;
    secondYPosition = mouseY;
  }
  clickCount++;
}
