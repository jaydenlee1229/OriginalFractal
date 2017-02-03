int r = 0;
int g = 100;
int b = 255;
boolean upr = true;
boolean upg = true;
boolean upb = true;
public void setup()
{
	size(600, 600);
}

public void draw()
{
	background(r, r, r);
	noFill();
	stroke(r, g, b);
	fractal(300, 300, 600 + r * 2);
	if(upr == true)
	{
		r += 3;
	}
	if(r > 255)
	{
		upr = false;
	}
	if(upr == false)
	{
		r -= 3;
	}
	if(r < 0)
	{
		upr = true;
	}
	if(upg == true)
	{
		g += 2;
	}
	if(g > 255)
	{
		upg = false;
	}
	if(upg == false)
	{
		g -= 2;
	}
	if(g < 0)
	{
		upg = true;
	}
	if(upb == true)
	{
		b += 1;
	}
	if(b > 255)
	{
		upb = false;
	}
	if(upb == false)
	{
		b -= 1;
	}
	if(b < 0)
	{
		upb = true;
	}
}

public void fractal(int x, int y, int len)
{
	ellipse(x, y, len, len/2);
	ellipse(x, y, len/2, len);
	if(len >= 75)
	{
		fractal(x - len/2, y, len/2);
		fractal(x, y - len/2, len/2);
		fractal(x, y + len/2, len/2);
		fractal(x + len/2, y, len/2);
	}
}