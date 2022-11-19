class PageManager {
    MainPageManager mpm;
    String page;
    PageManager(){
        page = "main";
        mpm = new MainPageManager(this);
        
        
    }

    void draw(){
        if (page.equals("main")){
            mpm.draw();
        }
    }

    void controlEvent(ControlEvent theEvent){
        if (page.equals("main")){
            mpm.controlEvent(theEvent);
        }
    }

}