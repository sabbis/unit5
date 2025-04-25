int _wave = 1;
float _coord;
Balloon[] balloons;

void gameStart()
{
  Wave(_wave);
}
class Balloon 
  {
    int _height;
    int _width;
    color rColor = int(random(100, 255));
    color gColor = int(random(100, 255));
    color bColor = int(random(100, 255));
    
    void Create(int x, int y)
    {
      pushMatrix();
      translate(x, y);
      fill(rColor, gColor, bColor);
      ellipse(27, 40, 55, 80);
      stroke(0);
      line(27, 80, 27, 140);
      popMatrix();
      _height = y;
      _width = x;
    }
    
    void Move(float _speed)
    {
      _speed = _wave*_speed;
      _height -= 1* _speed; 
      if(_height <= 0)
      {
        return;
      }
      Create(_width, _height);
      
    }
  }

void Wave(int _wave) 
{
  balloons = new Balloon[5 * _wave];
  _gameon = true;
  for (int i = 0; i < balloons.length; i++) 
  {
    balloons[i] = new Balloon();
    balloons[i].Create(int(random(width)), height + int(random(100)));
  }
}

void mouseClicked()
{
  for (int i = 0; i < balloons.length; i++) 
  {
    if(dist(
    )
  }
}
