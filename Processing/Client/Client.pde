  
// Creates a client that sends input to a server

import processing.net.*; 
Client myClient; 
int clicks;
int xpos, ypos;

void setup() { 
  // Connect to the local machine at port 10002.
  // This example will not run if you haven't
  // previously started a server on this port.
  myClient = new Client(this, "192.168.1.198", 5204); 
  // Say hello
  myClient.write("Hi there");
} 

void mouseReleased() {
  // Count the number of mouse clicks:
  clicks++;
  // Tell the server:
  myClient.write("Mouse pressed " + clicks + " times.\n");
}

void draw() { 
  // Change the background if the mouse is pressed
  if (mousePressed) {
    background(255);
  } else {
    background(0);
  }
  xpos = myClient.readChar();
  ypos = myClient.readChar();
  String toPrint = "x: " + xpos + ", y: " + ypos;
  println(toPrint);
  background(toPrint);
} 