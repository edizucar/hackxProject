int started = 0;
PageManager manager;

PFont font;


void setup(){
    size(1400,800);

    font = createFont("Arial", 16, true);
    textFont(font,36);

    manager = new PageManager();
}

void draw(){
    manager.draw();
}



void mouseClicked(){
    manager.mouseClicked();
}

