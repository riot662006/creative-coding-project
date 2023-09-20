// For Control Bottons

void controls(){
  push();
  fill(255);
  rectMode(CENTER);
  textAlign(CENTER , CENTER);
  textSize(11);
  noFill();
  
  
  /////////////////////////////////////////////////////////////transparent plus button
  push();
  if(mouseX >= 75 && mouseX <= 125 && mouseY >= height - 59 && mouseY <= height - 29){
    fill(255);
  }else{
    fill(0);
  }
  rect(100 , height - 44 , 50 , 30);
  if(mouseX >= 75 && mouseX <= 125 && mouseY >= height - 59 && mouseY <= height - 29){
    fill(0);
  }else{
    fill(255);
  }
  text("Trans +" , 100 , height - 44);
  pop();
  
  
  
  ///////////////////////////////////////////////////////////transparent minus button
  push();
  if(mouseX >= 20 && mouseX <= 70 && mouseY >= height - 59 && mouseY <= height - 29){
    fill(255);
  }else{
    fill(0);
  }
  rect(45 , height - 44 , 50 , 30);
  if(mouseX >= 20 && mouseX <= 70 && mouseY >= height - 59 && mouseY <= height - 29){
    fill(0);
  }else{
    fill(255);
  }
  text("Trans -" , 45 , height  - 44);
  pop();
  
  
  
  //////////////////////////////////////////////////////////////////scale plus button
  push();
  if(mouseX >= 75 && mouseX <= 125 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(255);
  }else{
    fill(0);
  }
  rect(100 , height - 78  , 50 , 30);
  if(mouseX >= 75 && mouseX <= 125 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(0);
  }else{
    fill(255);
  }
  text("Scale +" , 100 , height - 78);
  pop();
  
  
  
  ////////////////////////////////////////////////////////////////scale minus button
  push();
  if(mouseX >= 20 && mouseX <= 70 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(255);
  }else{
    fill(0);
  }
  rect(45 , height - 78  , 50 , 30);
  if(mouseX >= 20 && mouseX <= 70 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(0);
  }else{
    fill(255);
  }
  text("Scale -" , 45, height - 78);
  pop();
  
  
  
  /////////////////////////////////////////////////////////////////////toggle button
  push();
  if(mouseX >= width - 70 && mouseX <= width - 20 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(255);
  }else{
    fill(0);
  }
  rect(width - 45 , height - 78 , 50 , 30);
  if(mouseX >= width - 70 && mouseX <= width - 20 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(0);
  }else{
    fill(255);
  }
  text("Toggle" , width - 45 , height - 78);
  pop();
  
  
  
  /////////////////////////////////////////////////////////////////////rotate button
  push();
  if(mouseX >= width - 125 && mouseX <= width - 75 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(255);
  }else{
    fill(0);
  }
  rect(width - 100 , height - 78 , 50 , 30);
  if(mouseX >= width - 125 && mouseX <= width - 75 && mouseY >= height - 93 && mouseY <= height - 63){
    fill(0);
  }else{
    fill(255);
  }
  text("Rotate" , width  -100 , height - 78);
  pop();
  
  
  
  /////////////////////////////////////////////////////////////////////export button
  push();
  if(mouseX >= width - 124.5 && mouseX <= width - 19.5 && mouseY >= height - 59 && mouseY <= height - 29){
    fill(255);
  }else{
    fill(117 , 230 , 150);
  }
  rect(width - 72 , height - 44 , 105 , 30);
  if(mouseX >= width - 124.5 && mouseX <= width - 19.5 && mouseY >= height - 59 && mouseY <= height - 29){
    fill(0);
  }else{
    fill(255);
  }
  text("Export" , width - 72 , height - 44);
  pop();
  
  pop();
  
  
}
