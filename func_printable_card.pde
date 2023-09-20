void printable_card(){
  background(0);
  imageMode(CENTER);
  if(background_img !=null) {
    //to darken image
    
    if(background_img.width > background_img.height){
      println(min(background_img.width , width));
      println(background_img.height * min(background_img.width , width) / background_img.width);
      image(background_img, width / 2 , height /2 , min(background_img.width , width), background_img.height * min(background_img.width , width) /background_img.width);
    }
    else{
      image(background_img,width / 2 , height /2, background_img.width * min(background_img.height , height) / background_img.height  , min(background_img.height , height));
    }
  }
  //for the message
  textAlign(LEFT , CENTER);
  fill(255);
  textSize(16);
  //the size of the drawing area is 600px by 755px
  text(message , 132 , height - 120 , 340 , 100);
  if(!editable){
    current_shape = hovered_over();
  }
  //to display each and every shape created
  for (int i = 0  ; i < shapes.size() ; i++){
    if(current_shape == i){
      shapes.get(i).display(true);
    }else{
      shapes.get(i).display(false);
    }
  }
}
