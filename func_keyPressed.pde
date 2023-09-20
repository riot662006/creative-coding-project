void keyPressed(){
  //to switch with the keyCodes of the key pressed
  switch(keyCode){
    //there is a control box for the trasnsparency and the size. It appears when 'tab' is pressed. The 'tab' keycode is  9.
    case(9):
      //to control the control boxes with the controls_needed variable.
      controls_needed = !controls_needed;
      break;
    case (37):
      if(editable){
        shapes.get(current_shape).posx -= 1;
      }
      break;
    case (39):
      if(editable){
        shapes.get(current_shape).posx += 1;
      }
    case (38):
      if(editable){
        shapes.get(current_shape).posy -= 1;
      }
      break;
    case (40):
      if(editable){
        shapes.get(current_shape).posy += 1;
      }
      break;
    default:
      //if a keyboard key is pressed
      if(!start_typing){
        start_typing = true;
        message = "";
      }
      //for the backspace key. The keycode of backspace is 8.
      //
      if((int)key == 8){
        if(message.length() > 0){
          //removes the last character pressed
          if(message.charAt(message.length() - 1) != ' '){
            shapes.remove(shapes.size() - 1);
          }
          message = message.substring(0 , message.length() - 1);
          //to remove shapes as well
          
        }
      //for other keys from keycode 32 [the space key] to the keycode 126 [the "~" key]. This can be checked using the ascii table via https://www.asciitable.com/
      }else if((int) key >= 33 && (int) key <= 126){
         if(message.length() < 88){
           message += key;
          shapes.add(new Shapes());
         }
      }else if((int) key == 32){
        if(message.length()< 88){
          message += key;
        }
        
      }
      
  }
}
