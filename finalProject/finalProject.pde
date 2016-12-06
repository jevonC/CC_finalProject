//data dump @ http://tinyurl.com/z8jrota 
String[] graf; //all the graffiti on bridge
String[] grafPos; //individual locations of each graffiti as ratio of max bridge length
//i.e. if graffiti in middle of bridge, grafPos=0.5
//provisional formula for calculation available @ data dump
String[] grafDisplayed; //to store each graf[i] currently displayed

float maxLength; //maximum length of space
float maxWidth; //maximum width of space

float pos; //current position of each visitor
float posLength; //"length" distance travelled by each visitor
//posLength interested only in how far down along imaginary bridge visitor is
//not concerned with where along width visitor is

//importing processing sound library
import processing.sound.*;
SoundFile bridgeAmbient;

var setup() {
  size(maxWidth, maxLength);
  
  //load the font
  
  String[] graf=loadStrings("graf.txt");
  String[] grafPos=loadStrings("grafPos.txt");

  bridgeAmbient=new SoundFile(this, "bridgeAmbient.wav");
}

var draw() {
  //if (posLength/maxLength ~ any grafPos){
  //for grafPos[i] identified, dump corresponding graf[i] into grafDisplayed}
  //call grafDisplay function
}

var grafDisplay(){
  //if there are several visitors, multiple graf[i]s will always exist in grafDisplayed
  //check for word matches within everything in grafDisplayed
  //the more repeated a word, the bigger its  font
  //display every item in grafDisplayed at corresponding pos
}