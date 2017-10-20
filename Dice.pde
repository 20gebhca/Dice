//inistialise class outside
Die die1;
Die[] myDice;
//total value of the dice
int dietotal;
void setup() {
  size(170, 190);
  noLoop();
  background(120);
}

void draw() {
  background(120);
  noLoop();
  //draw grid of dice
  for (int cubeX=5; cubeX<=120; cubeX+=55) {
    for (int cubeY=5; cubeY<=120; cubeY+=55) {
      fill(255);
      die1= new Die(cubeX, cubeY);
      die1.dice();
      die1.show();
    }
  }
  //display total dice value text
  for (int track=2; track<=9; track++) {
    die1.createtotal();
  }
}

//redraw to make different ones
void mousePressed() {
  dietotal=0;

  redraw();
}

class Die { 
  //create die varibles
  int cubeX;
  int cubeY;
  int dieran1;

  Die(int x, int y) { 
    //set their values
    cubeX=x;
    cubeY=y;
  }


  void show() {
    //draw cubes
    rect(cubeX, cubeY, 50, 50);
    //if statements to draw dots depending on random dot drawing
    if (dieran1==1) {
      fill(0);
      ellipse(cubeX+25, cubeY+25, 5, 5);
    }
    if (dieran1==2) {
      fill(0);
      ellipse(cubeX+15, cubeY+15, 5, 5);
      ellipse(cubeX+35, cubeY+35, 5, 5);
    }
    if (dieran1==3) {
      fill(0);
      ellipse(cubeX+10, cubeY+10, 5, 5);
      ellipse(cubeX+25, cubeY+25, 5, 5);
      ellipse(cubeX+40, cubeY+40, 5, 5);
    }
    if (dieran1==4) {
      fill(0);
      ellipse(cubeX+15, cubeY+15, 5, 5);
      ellipse(cubeX+15, cubeY+35, 5, 5);
      ellipse(cubeX+35, cubeY+15, 5, 5);
      ellipse(cubeX+35, cubeY+35, 5, 5);
    }
    if (dieran1==5) {
      fill(0);
      ellipse(cubeX+10, cubeY+10, 5, 5);
      ellipse(cubeX+10, cubeY+40, 5, 5);
      ellipse(cubeX+40, cubeY+10, 5, 5);
      ellipse(cubeX+40, cubeY+40, 5, 5);
      ellipse(cubeX+25, cubeY+25, 5, 5);
    }
    if (dieran1==6) {
      fill(0);
      ellipse(cubeX+10, cubeY+10, 5, 5);
      ellipse(cubeX+10, cubeY+40, 5, 5);
      ellipse(cubeX+40, cubeY+10, 5, 5);
      ellipse(cubeX+40, cubeY+40, 5, 5);
      ellipse(cubeX+10, cubeY+25, 5, 5);
      ellipse(cubeX+40, cubeY+25, 5, 5);
    }
  }          
//run random die dot total
  void dice() {

    dieran1=(int)(Math.random()*6+1);
    dietotal=dietotal+dieran1;
    System.out.println(cubeX +" " + cubeY);
  }
  //display total die text 
  void createtotal() {
    text("Die Total "+dietotal, 80, 185);
  }
}
