// 1. Follow the recipe instructions inside the Segment class.

// The Segment class will be used to represent each part of the moving snake.

class Segment {

  //2. Create x and y member variables to hold the location of each segment.
int x;
int y;
  // 3. Add a constructor with parameters to initialize each variable.
public Segment(int x, int y){
  this.x = x;
  this.y = y;
}

  // 4. Add getter and setter methods for both the x and y member variables.
  void setY(int y){
     this.y = y; 
  }
  void setX(int x){
  this.x = x;
}

int getY(){
  return y; 
}
int getX(){
  return x;
}
}
// 5. Create (but do not initialize) a Segment variable to hold the head of the Snake
Segment head;


// 6. Create and initialize a String to hold the direction of your snake e.g. "up"
String dir = "up";


// 7. Create and initialize a variable to hold how many pieces of food the snake has eaten.
// give it a value of 1 to start.
int eaten = 1;


// 8. Create and initialize foodX and foodY variables to hold the location of the food.
int foodX = ((int)random(50)*10);
int foodY = ((int)random(50)*10);
// (Hint: use the random method to set both the x and y to random locations within the screen size (500 by 500).)

//int foodX = ((int)random(50)*10);



void setup() {

  // 9. Set the size of your sketch (500 by 500).

  size(500, 500);


  // 10. initialize your head to a new segment.
  head = new Segment(10,10);

  // 11. Use the frameRate(int rate) method to set the rate to 20.
  frameRate(20);
}


void draw() {

  background(0);


  //12. Call the manageTail, drawFood, drawSnake, move, and collision methods.
  manageTail();
  drawFood();
  drawSnake();
  move();
  collision();
}


// 13. Complete the drawFood method below. (Hint: each piece of food should be a 10 by 10 rectangle).

void drawFood() {
  rect(foodX,foodY,10,10);
}


//14. Draw the snake head (use a 10 by 10 rectangle)

void drawSnake() {
rect(head.getX(),head.getY(),10,10);

  //test your code
}


// 15. Complete the move method below.

void move() {

  // 16. Using a switch statement, make your snake head move by 10 pixels in the correct direction.
  //This is an incomplete switch statement:
 
  
  switch(dir) {
   
  case "up":{
  
    // move head up here 
    head.setY(head.getY()- 10);
    break;}
  case "down":{
    head.setY(head.getY() + 10);
    
    // move head down here 
    break;}
  case "left":{
  head.setX(head.getX()-10);
   // figure it out 
    break;}
  case "right":{
  head.setX(head.getX()+10);
    // mystery code goes here 
    break;}
  }
  


  // 17. Call the checkBoundaries method to make sure the snake head doesn't go off the screen.
  checkBoundaries();
}


// 18. Complete the keyPressed method below. Use if statements to set your direction variable depending on what key is pressed.

void keyPressed() {
  if(key == CODED){
  if(keyCode ==  UP){
    //20. Make sure that the key for your current direction’s opposite doesn’t work(i.e. If you’re going up, down key shouldn’t work)
    if(!dir.equals("down")){
    
     dir = "up";
  }
  }
  
  
  else if(keyCode == DOWN){
    if(!dir.equals("up")){
    dir = "down";
    }
  }
  else if(keyCode == LEFT){
    if(!dir.equals("right")){
    dir = "left";
    }
  }
  else if(keyCode == RIGHT){
    if(!dir.equals("left")){
    dir = "right";
    }
    }
  }
}



// 19. check if your head is out of bounds (teleport your snake head to the other side).

void checkBoundaries() {
  if(head.getX()> 500){
    head.setX(0);
  }
  if(head.getX()< 0){
    head.setX(500);
  }
  if(head.getY()> 500){
    head.setY(0);
  }
  if(head.getY()< 0){
    head.setY(500);
  }
}





// 21. Complete the missing parts of the collision method below.

void collision() {
  // If the segment is colliding with a piece of food...
  if(head.getX() == foodX && head.getY() == foodY){
  eaten = eaten + 1;
  foodX = ((int)random(50)*10);
  foodY = ((int)random(50)*10);
  }
     // Increase the amount of food eaten and set foodX and foodY to new random locations.
}



/**
 
 ** Part 2: making the tail (the rest of the snake)
 
 **/

//  1. Create and initialize an ArrayList of Segments. (This will be your snake tail!)
  ArrayList<Segment> seg = new ArrayList<Segment>();

// 2. Complete the missing parts of the manageTail method below and call it in the draw method.

  void manageTail() {
  drawTail();
  checkTailCollision();
  //Call the drawTail and checkTailCollision methods.

  // Add a new Segment to your ArrayList that has the same X and Y as the head of your snake.
seg.add( new Segment(head.getX(), head.getY()));

  // To keep your tail the right length:
  // while the tail size is greater than the number of food pieces eaten, remove the first Segment in your tail.
  while(seg.size()>eaten){
    seg.remove(0);
  }
}

void drawTail() {
    // Draw a 10 by 10 rectangle for each Segment in your snake ArrayList.
    for(int i = 0; i < seg.size(); i++){
      Segment sg = seg.get(i);
      rect(sg.getX(),sg.getY(),10,10);
    }
}


// 3. Complete the missing parts of the bodyCollision method below.

void checkTailCollision() {

  // If your head has the same location as one of your segments...
   for(int i = 0; i < seg.size(); i++){
   Segment sgm = seg.get(i);
   if(head.getX() == sgm.getX()){
     if(head.getY() == sgm.getY()){
     eaten = 0;
     }
 }
 }
  // reset your food variable

  //Call this method at the beginning of your manageTail method.
}
