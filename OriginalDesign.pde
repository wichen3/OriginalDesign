int eggPosY = 210;
int eggPosX = 285;
void setup()
{
  size(500,500);
  noLoop();

}
void draw()
{
	background(255, 255, 255);
	egg();
	bill();
	duckbody();
	wing();
	eye();
}
void duckbody()
{
	stroke(0, 0, 0);
	ellipse(225, 285, 50, 20);
	ellipse(265, 285, 50, 20);
	fill(255, 155, 0);
	rect(220, 195.0 , 15, 80);
	rect(260, 195.9, 15, 80);
	fill(0, 0, 0);	
	arc(254, 160, 170, 180, 0, PI);
	rect(170, 100, 80, 80);
	arc(210, 100, 80, 80, PI, 2*PI);
}
void wing()
{
	fill(0, 0, 0);
	beginShape();
	curveVertex(250, 160);
	curveVertex(250, 160);
	curveVertex(338, 130);
	curveVertex(338, 160);
	curveVertex(338, 160);
	endShape();
}
void eye()
{
	fill(255, 255, 255);
	ellipse(200, 100, 35, 35);
}
void bill()
{
	stroke(0, 0, 0);
	fill(255, 150, 0);
	ellipse(180, 135, 80, 40);
}
void egg()
{
	ellipse(eggPosX, eggPosY, 40, 55);
	eggPosX = eggPosX + 20;
	eggPosY = eggPosY + 25;
	if (eggPosY>=500) 
	{
		eggPosY = 210;
		eggPosX = 285;
	}
}
void mousePressed()
{
	redraw();
}