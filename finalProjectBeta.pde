//mouse=visitor

//space-dependent variables?
int w=400; //good width for space
int h=850; //good height for space

PFont myFont; //fonts always needed
int y; //creates lines

float distanceFromFeet=10; //distance projection of text is away from visitor's feet

float selectorTemp;
int selector;
boolean selectorChange;

int total=30;
String[] betaGrafString; //will be initialised in BetaGraf
BetaGraf[] betaGrafs=new BetaGraf[total]; //or whatever total is... 

void setup() {
  size(400, 850); 
  //font stuff
  myFont=createFont("Arial", 32, true);
  textFont(myFont);
  //anti-aliasing
  smooth();
  //let's try initialising BetaGraf array...
  for (int i=0; i<betaGrafs.length; i++) {
    betaGrafs[i]=new BetaGraf(10, 10, total*i);
  }
}

void draw() {
  //background stuff
  background(255, 255, 255);

  //String[] betaGrafString=loadStrings("finalProjectBeta.txt"); //shifted into BetaGraf, it is possible!

  textAlign(RIGHT, CENTER);
  textSize(12);
  fill(200); //colour of counter

  stroke(200); //colour of grid

  //helpful grid
  //territory of each graf is below the line, so we only need go until height minus increment
  for (float y=0; y<=850; y+=(float(height)/float(total))) { 
    line(0, y, width, y);
    /* let's not have serial numbers for the lines
    float counter=y/50;
    text(str(counter), width, y);
    */
  }
  
  println(float(height)/float(73));

  //selects which object in betaGrafs to be displayed
  selectorTemp=((mouseY/float(height))/(float(1)/float(total))); //float must divide by float, betaGrafString.length=17
  selector=floor(selectorTemp);

  /*
  //trying to show betaGrafString
   textAlign(CENTER, BOTTOM);
   fill(0);
   text(betaGrafString[selector], mouseX, mouseY-distanceFromFeet);
   */

  //BetaGraf
  betaGrafs[selector].display();
  betaGrafs[selector].fadeIn();
}

/*
boolean selectorChange(){ //checks if selector value has changed, to reset fadeIn?
//how?
}
*/