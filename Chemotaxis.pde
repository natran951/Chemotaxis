 int x = (int)(Math.random()*width);
 int y = (int)(Math.random()*height);
 Bacteria eukaryote = new Bacteria(250, 250, 255);

 void setup(){     
 	size(500,500);
 	frameRate(50);
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
 }    