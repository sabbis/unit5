int MODE;
int MENUON = 1, GAMEON = 2, ENDON = 3;
boolean _gameon;


void setup() {
  size(1000, 800);
  MODE = MENUON;
}

void draw() 
{
  if (MODE == MENUON) 
  {
    menu();
  } 
  else if (MODE == GAMEON) 
  {
    if (!_gameon) {
      gameStart(); // only call once
    }

    background(#00D6FA); // clear screen once per frame

    for (Balloon b : balloons) 
    {
      b.Move(0.5); // animate balloons
    }
  }
}

void mouseReleased() 
{
  if (mouseX > 400 && mouseX < 600 && mouseY > 360 && mouseY < 440 && MODE == MENUON) 
  {
    MODE = GAMEON;
  }
}
