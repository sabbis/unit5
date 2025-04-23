int MODE;
int MENUON = 1, GAMEON = 2, ENDON = 3;

void setup() {
  size(1000, 800);
  MODE = MENUON;
}

void draw() 
{
  if (MODE == MENUON) 
  {
    menu();
  } else if (MODE == GAMEON) 
  {
    gameStart();
  }
}

void mouseReleased() 
{
  if (mouseX > 400 && mouseX < 600 && mouseY > 360 && mouseY < 440 && MODE == MENUON) 
  {
    MODE = GAMEON;
  }
}
