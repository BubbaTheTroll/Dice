Die Bob;
Die Bubba;
void setup()
{
	
	size(400,400);
	noLoop();
}
void draw()
{
	background(255,0,0);
	Bubba = new Die(250,100);
	Bob = new Die(50,100);
	Bob.roll();
	Bob.show();
	Bubba.roll();
	Bubba.show();
	textSize(30);
	int sum = Bob.myNum + Bubba.myNum;
	text("Sum:" + sum, 190,250);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myNum, myX, myY;//variable declarations here
	Die(int x, int y) //constructor
	{
		myNum = (int)(Math.random()*6+1);
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll()
	{
		rect(myX, myY, 100,100);
		//your code here
	}
	void show()
	{
		
		if(myNum == 1){
			ellipse(myX+50, myY+50, 10,10);
		} else if(myNum == 2){
			ellipse(myX+33, myY+33, 10,10);
			ellipse(myX+66, myY+66, 10,10);
		} else if(myNum == 3){
			ellipse(myX+50, myY+33, 10,10);
			ellipse(myX+33, myY+66, 10,10);
			ellipse(myX+66, myY+66, 10,10);		
		} else if(myNum == 4){
			for(int i = 33; i <= 66; i+=30){
				for(int j = 33; j <= 66; j+=30){
					ellipse (myX+i,myY+j,10,10);
				}
			}
		} else if(myNum == 5){
			for(int i = 33; i <= 80; i+=40){
				for(int j = 33; j <= 80; j+=40){
					ellipse (myX+i,myY+j,10,10);
					ellipse (myX+50, myY+50, 10,10);
				}
			}
		} else if(myNum == 6){
			for(int i = 33; i <= 66; i+=25){
				for(int j = 33; j <= 66; j+=15){
					ellipse (myX+i,myY+j,10,10);
				}
			}
		}
		textSize(15);
		text(myNum, myX, myY);

		//your code here
	}
}
