class MainPageManager{
    PageManager manager;
    PImage ukImg;
    Button b;
    

    MainPageManager(PageManager m){
        manager = m;
        ukImg = loadImage("./images/uk2.gif");
        ukImg.resize(ukImg.width*height/ukImg.height,height);

        b = cp5.addButton("Progression Tree").setValue(0).setPosition(100,50).setSize(200,50);
        
        
    }

    void draw(){
        background(50);
        image(ukImg,width/2-ukImg.width/2,0);
        
        push();
        translate(width - 350,10);
        fill(255,0,0);
        rect(0, 0, 300, height - 20);
        text("Data", 0, 36);
        pop();

        push();
        translate(50,10);
        
        fill(0,255,0);
        rect(0, 0, 300, height - 20);

        text("Actions", 0, 36);
        pop();

        
       

    }

    void controlEvent(ControlEvent theEvent){
        String name = theEvent.getController().getName();

        if (name.equals("Progression Tree")){
            println("Progression Tree");
        }

    }

}

