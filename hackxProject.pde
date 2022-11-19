import controlP5.*;
int started = 0;
PageManager manager;

ControlP5 cp5;
PFont font;


void setup(){
    size(1400,800);

    font = createFont("Arial", 16, true);
    textFont(font,36);

    cp5 = new ControlP5(this);
    manager = new PageManager();
}

void draw(){
    manager.draw();
}

public void controlEvent(ControlEvent theEvent) {
    manager.controlEvent(theEvent);
}


