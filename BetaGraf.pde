class BetaGraf {
  int a=0; //alpha always begins at 0, until fade in
  int x; //x position
  int y; //y position
  int w; //width
  int h; //height
  float c; //colour

  //text box stuff
  //should I make these variables global? alongside w and h under "space-dependent variables"?
  int tbW=200; //text box width
  int tbH=500; //text box height

  String[] betaGrafString=loadStrings("finalProjectBeta.txt");

  BetaGraf(int w_, int h_, float c_) {
    w=w_;
    h=h_;
    c=c_;
  }

  //how can I make this reset every time?
  void fadeIn() {
    if (a<255) {
      a+=2;
    }
    println(a);
  }

  void display() {

    /*
    //trial circle
     fill(c);
     ellipseMode(CENTER);
     ellipse(mouseX, mouseY-distanceFromFeet, w, h);
     */


    if (mouseX>tbW/2 && mouseX<(width-(tbW/2))) {
      textAlign(CENTER, BOTTOM); //no use if using specifying text box?
      fill(0, a);
      rectMode(CENTER);
      text(betaGrafString[selector], mouseX, mouseY-(tbH/2)-distanceFromFeet, tbW, tbH); //last two parameters = width and height
    }

    //compensating for walls
    //this solution is imperfect, text will hover away if text is short!
    //would constrain or map be any use here?
    //and why does the text box jump up?
    
    //if getting too close to left wall
    if ((mouseX-(tbW/2))<0) {
      // textAlign(LEFT, BOTTOM); //an alternative?
      text(betaGrafString[selector], mouseX+((tbW/2)-mouseX), mouseY-(tbH/2)-distanceFromFeet, tbW, tbH);
      println("over");
    }

    if ((mouseX+(tbW/2))>width) {
      //textAlign(RIGHT, BOTTOM); //an alternative?
      text(betaGrafString[selector], width-(tbW/2), mouseY-(tbH/2)-distanceFromFeet, tbW, tbH);
      println("over");
    }
  }
}