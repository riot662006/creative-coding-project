//class for all the shapes that would appear
class Shapes{
  float degree = 0;
  //the  color
  float hue;
  //the size(radius of the shape) and its transperancy
  float radius , trans = 100;
  //the position on the screen
  float posx , posy;
  /*to specify the shape.
  1 - circle
  2 - square
  3 - triangle
  1 as default
  */
  int shape = 1;
  //the constructor
  Shapes(){
    radius = random(20 , 100);
    posx = random(radius , (600 - radius));
    posy = random(radius , (755 - radius));
    hue = random(360);
    shape = (int)random(1 , 4);
  }
  
  void display(boolean changable){
     push(); 
     rectMode(CENTER);
     strokeWeight(2);
      fill(hue , 255 , 255 , map(trans , 0 , 100 , 0 , 255));
      if(changable){
        stroke(255);
      }else{
        noStroke();
      }
      if(hue > 310 && hue < 360){
        fill(hue , 0 , 255 , map(trans ,  0 , 100 , 0 , 255));
        if(changable){
          stroke(0 , 0 , 150);
        }else{
          noStroke();
        }
      }
      translate(posx , posy);
      rotate(map(degree , 0 , 360 , 0 , 2 * PI));
      switch(shape){
        case 1:
          ellipse(0, 0, radius * 2 , radius * 2);
          break;
        case 2:
          rect(0 , 0, radius * 2 , radius *2);
          break;
        case 3:
          triangle(-radius * sqrt(3) / 2 , radius / 2 , radius * sqrt(3) / 2 , radius / 2 , 0 , -radius);
      }
      pop();
  }
  
  void size_change(int change){
    if(radius + change >= 10){
      radius += change;
    }
  }
  
  void trans_change(int change){
    if(trans - change >= 10 && trans - change <= 100){
      trans -= change;
    }
  }
  
  void rotate_shape(int deg){
    degree += deg;
    degree %= 360;
  }
  
  void toggle(){
    shape += 1;
    if(shape > 3){
      shape = 1;
    }
  }
  
  boolean inside(){
    switch(shape){
      case 1:
        return dist(posx , posy , mouseX , mouseY) <= radius;
      case 2:
        return mouseX >= posx - radius && mouseX <= posx + radius && mouseY >= posy - radius && mouseY <= posy + radius;
      case 3:
        return mouseY >= posy - radius && mouseY <= posy + (radius / 2) && -sqrt(3) * (mouseX - posx) - radius <= (mouseY - posy) && sqrt(3) * (mouseX - posx) - radius <= (mouseY - posy);
      default:
        return false;
    }
  }
}
