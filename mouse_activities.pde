void mousePressed() {
  if (mouseButton == LEFT) {
    if (controls_needed && mouseX >= width - 124.5 && mouseX <= width - 19.5 && mouseY >= height - 59 && mouseY <= height - 29 ) {
      int d = day();
      int m = month();
      int y = year();
      int mm = millis();
      int s = second();
      int min = minute();
      int h = hour();
      text("" + d + "-" + m + "-" + y +" " + h + ":" + min + ":" + s + ":" + mm, 50, 50);
      beginRecord(PDF, "cards/card" + d + "-" + m + "-" + y +" " + h + "_" + min + "_" + s + "_" + mm + ".pdf");
      colorMode(HSB);
      editable = false;
      current_shape = -1;
      printable_card();
      endRecord();
      
      
    } else if (hovered_over() != -1) {
      current_shape = hovered_over();
      editable = true;
    } else if (editable && controls_needed && mouseX >= 75 && mouseX <= 125 && mouseY >= height - 93 && mouseY <= height - 63) {
      shapes.get(current_shape).size_change(5);
    } else if (editable && controls_needed && mouseX >= 20 && mouseX <= 70 && mouseY >= height - 93 && mouseY <= height - 63) {
      shapes.get(current_shape).size_change(-5);
    } else if (editable && controls_needed && mouseX >= 20 && mouseX <= 70 && mouseY >= height - 59 && mouseY <= height - 29) {
      shapes.get(current_shape).trans_change(5);
    } else if (editable && controls_needed && mouseX >= 75 && mouseX <= 125 && mouseY >= height - 59 && mouseY <= height - 29) {
      shapes.get(current_shape).trans_change(-5);
    } else if (editable && controls_needed && mouseX >= width - 125 && mouseX <= width - 75 && mouseY >= height - 93 && mouseY <= height - 63) {
      shapes.get(current_shape).rotate_shape(5);
    } else if (editable && controls_needed && mouseX >= width - 70 && mouseX <= width - 20 && mouseY >= height - 93 && mouseY <= height - 63) {
      shapes.get(current_shape).toggle();
      shapes.get(current_shape).degree = 0;
    } else {
      current_shape = hovered_over();
      editable = false;
    }
  } else if (mouseButton == RIGHT) {
    if (hovered_over() != -1) {
      shapes.get(current_shape).hue = random(360);
    }
  }
}

void mouseDragged() {
  if (editable && hovered_over() != -1) {
    shapes.get(current_shape).posx = constrain(mouseX, 0, width);
    shapes.get(current_shape).posy = constrain(mouseY, 0, height  - 100 - shapes.get(current_shape).radius);
  }
}
