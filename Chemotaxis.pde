 Bacteria eukaryote = new Bacteria(250, 250, 255);

 void setup(){     
 	size(500,500);
 	frameRate(60);
 }   
 void draw()   {    
 	background(100);
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
 		sizeX = 5;
 		sizeY = 5;
 	}

 	void move() {
 		if (mousePressed == true) {
 			myX += (float)(mouseX-myX)/50; 
 			myY += (float)(mouseY-myY)/50; 
 		}

 	}
 	void show() {
 		fill(myColor);
 		ellipse(myX,myY,sizeX,sizeY);
 	}
 }    