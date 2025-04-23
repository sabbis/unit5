int _wave;

void gameStart()
{
  background(#00D6FA);
}

void Wave()
{
  
}

void Balloon(int x, int y)
{
  color rColor = int(random(100, 255));
  color gColor = int(random(100, 255));
  color bColor = int(random(100, 255));
  pushMatrix();
  translate(x, y);
  fill(rColor, gColor, bColor);
  ellipse(10, 15, 20, 30);
}
