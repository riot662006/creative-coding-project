void dropEvent(DropEvent theDropEvent) {
  println("");
  println("isFile()\t"+theDropEvent.isFile());
  println("isImage()\t"+theDropEvent.isImage());
  println("isURL()\t"+theDropEvent.isURL());
  
  // if the dropped object is an image, then 
  // load the image into our PImage.
  if(theDropEvent.isImage()) {
    println("### loading image ...");
    background_img = theDropEvent.loadImage();
  }else{
    //Source file: http://transfluxus.github.io/drop/examples/DropText/DropText.pde
    String droppedText = theDropEvent.text();
    message = "";
    shapes = new ArrayList<Shapes>();
    char[] characters = droppedText.toCharArray();
    for(char c : characters){
      println((int) c);
      int a = (int) c;
      if(a >= 33 && a <= 126){
         if(message.length() < 88){
           message += c;
          shapes.add(new Shapes());
         }
      }else if(a == 32){
        if(message.length()< 88){
          message += c;
        }
        
      }
    }
  }
}
