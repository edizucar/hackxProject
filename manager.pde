class PageManager {
    MainPageManager mpm;
    String page;
    Button mapButton, surveilButton, actionButton;
    int tabsHeight = 100;
    PageManager(){
        page = "map";
        mpm = new MainPageManager(this);

        mapButton = new Button(0,0,width/3,tabsHeight,200,0,0,"MAP");
        surveilButton = new Button(width/3,0,width/3,tabsHeight,0,0,200,"SURVEILLENCE");
        actionButton = new Button(2*width/3,0,width/3,tabsHeight,0,0,200,"ACTIONS");
        
        
    }

    void draw(){
        background(0);
        if (page.equals("map")){
            mpm.draw();
        }

        //topbar
        push();
        mapButton.draw();
        surveilButton.draw();
        actionButton.draw();
        pop();
    }

    void mouseClicked(){
        if (page.equals("map")){
            mpm.mouseClicked();
            if (surveilButton.mouseOver()){
                page = "surveil";
                surveilButton.setColour(200,0,0);
                mapButton.setColour(0,0,200);
            }
            if (actionButton.mouseOver()){
                page = "action";
                actionButton.setColour(200,0,0);
                mapButton.setColour(0,0,200);
            }
        }
        if (page.equals("surveil")){
            if (mapButton.mouseOver()){
                page = "map";
                surveilButton.setColour(0,0,200);
                mapButton.setColour(200,0,0);
            }
            if (actionButton.mouseOver()){
                page = "action";
                surveilButton.setColour(0,0,200);
                actionButton.setColour(200,0,0);
            }
        }
        if (page.equals("action")){
            if (mapButton.mouseOver()){
                page = "map";
                actionButton.setColour(0,0,200);
                mapButton.setColour(200,0,0);
            }
            if (surveilButton.mouseOver()){
                page = "surveil";
                actionButton.setColour(0,0,200);
                surveilButton.setColour(200,0,0);
            }
        }

        
    }

}