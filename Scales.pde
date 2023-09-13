void setup() {
  size(1000, 1000);  
  noLoop(); 
}
void draw() {
  boolean shift = true;
  for (int y = 1200; y > -400; y = y - 130) {
    for (int x = -250; x < 1200; x = x + 200) {
      if (shift == true) {
        scale(x+100, y);
      } else
        scale(x, y);
    }
    if (shift == true)
      shift = false;
    else 
      shift = true;
  }
}


void scale(int x, int y) 
{

  for (int shadow = 100; shadow > 0; shadow -= 5)
  {
    fill(20, 20, 20, 130 - shadow);
    ellipse(250+x, 255+y, shadow + 60, shadow + 200);
  }

  noStroke();

  int RGB;
  RGB = ((int)(Math.random()*255));
  if (RGB < 40) {
    RGB = 40;
  }
  if (RGB > 200) {
    RGB = 200;
  }

  fill(RGB+15, RGB+15, RGB+15, 255);
  triangle(250+x, 100+y, 370+x, 100+y, 250+x, 400+y);
  fill(RGB, RGB, RGB, 255);
  bezier(360+x, 100+y, 350+x, 250+y, 300+x, 350+y, 250+x, 400+y);
  //right light
  fill(RGB + 50, RGB + 50, RGB + 50, 255);
  bezier(140+x, 100+y, 150+x, 250+y, 200+x, 350+y, 250+x, 400+y);
  fill(RGB + 35, RGB + 35, RGB + 35, 255);
  triangle(130+x, 100+y, 250+x, 100+y, 250+x, 400+y);
  //left dark
}
