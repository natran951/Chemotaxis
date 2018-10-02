 int x = (int)(Math.random()*250+250);
 int y = (int)(Math.random()*250+250);
 int orange = color(253,106,2);
//int orange = color(255, 185,48);
Bacteria eukaryote = new Bacteria(250, 250, orange);
Bacteria[] colony;

 void setup(){
   colony = new Bacteria[250];
   for (int i = 0; i < colony.length; i++) {
     colony[i] = new Bacteria(250, 250, orange);
   }
   size(500,500);
   frameRate(36);
 }   
 void draw()   {    
   background(170, 221, 255);
   background(25, 112, 255);
   eukaryote.show();
   eukaryote.move();
   for (int i = 0; i <colony.length; i++) {
     colony[i].show();
     colony[i].move();
   }
 }  
 class Bacteria    {  
   int myX, myY, sizeX, sizeY, myColor, slope;
   boolean attract;
   int degree, xSpd, ySpd;
   Bacteria(int x, int y, color c) {
     myX = x;
     myY = y;
     myColor = c;
     sizeX = 15;
     sizeY = 15;
     slope = 0;
     degree = (int)(Math.random()*361);
     xSpd = 1;
     ySpd = 1;
   }

   void move() {
     if (mousePressed == true) {
       if (mouseX-myX > 100 || myX-mouseX>100){
         myX += (float)(mouseX-myX)/100; 
       }
       else if (mouseY-myY > 100 || myY-mouseY>100) {
         myY += (float)(mouseY-myY)/100; 
       }
       else {
        myX += (float)(mouseX-myX)/15; 
        myY += (float)(mouseY-myY)/15; 
       }
     }
     myX += (int)(Math.random()*5)-2;
     myY += (int)(Math.random()*5)-2;
     
     if ((int)(Math.random()*60) <= 4) {
       //degree of 360 
       degree = (int)(Math.random()*361);
     }
     if (degree <= 90) {
           myX += ySpd;
           myY -= xSpd;
     }
     else if (degree <= 180) {
       myX -= xSpd;
       myY -= ySpd;
     }
     else if (degree <= 270) {
       myX -= xSpd;
       myY += ySpd;
     }
     else if (degree <= 360) {
       myX += xSpd;
       myY += ySpd;
     }
     //text(degree,50,50);
   }
   void show() {
     fill(myColor);
     //fill(253,106,2);
     ellipse(myX,myY,sizeX,sizeY);
     ellipse(myX-7.5,myY,5,5);
     fill(0);
     //ellipse(myX-3,myY-0.5, sizeX/10,sizeY/10);
     ellipse(myX+3,myY-0.5, sizeX/10,sizeY/10);
     line(myX+2.5,myY+2.5,myX+6,myY+3);
     fill(96, 40, 16);
     ellipse(mouseX,mouseY,5,5);
   }
 }
/* Bacteria eukaryote = new Bacteria(x, y, 255);

 void setup(){     
 	size(500,500);
 	frameRate(60);
 }   
 void draw()   {    
 	background(37,109,123);
 	eukaryote.show();
 	eukaryote.move();
 }  
 class Bacteria    {  
 	int myX, myY, sizeX, sizeY, myColor;
 	boolean attract;
 	Bacteria(int x, int y, color c) {
 		myX = x;
 		myY = y;
 		myColor = c;
 		sizeX = 15;
 		sizeY = 15;
 	}

 	void move() {
 		if (mousePressed == true) {
 			if (mouseX-myX > 100 || myX-mouseX>100){
 				myX += (float)(mouseX-myX)/100; 
 			}
 			else if (mouseY-myY > 100 || myY-mouseY>100) {
 				myY += (float)(mouseY-myY)/100; 
 			}
 			else {
				myX += (float)(mouseX-myX)/15; 
				myY += (float)(mouseY-myY)/15; 
 			}
 		}
 		myX += (int)(Math.random()*5)-2;
 		myY += (int)(Math.random()*5)-2;
 	}
 	void show() {
 		//fill(myColor);
 		fill(253,106,2);
 		ellipse(myX,myY,sizeX,sizeY);
 	}
 }    */