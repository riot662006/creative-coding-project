/* General Overview:
  ~ Left Click - For clicking buttons and shapes
  ~ Right Click - To change the colour of the selected shape
  ~ Arrow Keys - Movement of selected shapes
  ~ Tab Key - to call up the control interface
  ~ Exports as a pdf file
  ~ Ability to drag and drop texts and images
  ~ Typing a maximum of 84 characters (including spaces)
  ~ Each key randomly generates a circle , square or triangle.
  ~ Each shape can be resized, rotated or toggled between the shapes with an option to change the transparancy.
*/


//by Vincent Sylvester, Ibekwe Onyekachi and Orimoloye Moyin


//Library: Drop 1.0.2 Ramin Soleymani, original sDrop by Andreas Schlegel Drop is a processing library that lets you dragand drop objects such as files, images, bookmarks, or text into your processing sketch.
// Source file: http://transfluxus.github.io/drop/examples/DropLoadImage/DropLoadImage.pde  

import drop.*;
import test.*;

SDrop dropImage;
PImage background_img;
//library for exporting the pdf with the 'export' button
import processing.pdf.*;


//to display "start typing" for initiation and changes when typing alphabets
String message = "Start typing....";
//controls the "start typing" display
boolean start_typing = false;
//this boolean brings out the control icons
boolean controls_needed = false;
//refer to the "Shapes" tab to see the Shapes class
//array for the shapes
ArrayList<Shapes> shapes = new ArrayList<Shapes>();
//current Shape on it
int current_shape = -1;
boolean editable = false;
//this PFont is for the fonts in the data file.
PFont skyfall;

//setup for the application
void setup(){
  size(600, 900);
  colorMode(HSB);
  imageMode(CENTER);
  background(0);
  skyfall = loadFont("Skyfall-Regular-15.vlw");
  stroke(255);
  dropImage = new SDrop(this);
}

//the draw loop
void draw(){
  //refer to the func_printed_card tab
  printable_card();
  //if controls_needed is true, the controls will appears and if false, the controls don't appear.
  if(controls_needed){
    //refer to the func_controls tab
    //function to display the control icons.
    controls();
  }
 
}
