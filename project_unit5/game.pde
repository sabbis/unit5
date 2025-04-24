int _wave;
float _coord;

void gameStart()
{
  background(#00D6FA);
}

void Wave(int _wave)
{
  Balloon[] balloons = new Balloon[5*_wave];
  for(Balloon b : balloons)
  {
    b.Create(int(random(width)), int(random(height - 800)));
  }
  while(_coord >= 0)
  {  
      for(Balloon b : balloons)
      {
        b.Move(0.5, b);
      }  
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
      ellipse(10, 15, 20, 30);
      popMatrix();
      _height = y;
      _width = x;
    }
    
    void Move(float _speed, int i)
    {
      _speed = _wave*_speed;
      _height += 1* _speed; 
      if(_height <= 0)
      {
        return;
      }
      Create(_width, _height);
      
    }
  }
}
