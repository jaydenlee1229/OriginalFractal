public void setup()
{
	size(600, 600);
}

public void draw()
{
	background(0);
	noFill();
	stroke(255);
	fractal(0, 300, 600);
	fill(0);
	textSize(50);
	text("Fish", 250, 300);
}

public void fractal(int x, int y, int len)
{
	if(len <= 10)
	{
		ellipse(x, y, len, len/2);
		ellipse(x, y, len/2, len);
	}
	else
	{
		fractal(x, y, len/2);
		fractal(x + len/4, y - len/4, len/2);
		fractal(x + len/2, y, len/2);
		fractal(x + len/4, y + len/4, len/2);
	}
}