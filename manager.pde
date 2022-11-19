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

    void mouseClicked(){
        if (page.equals("main")){
            mpm.mouseClicked();
        }
    }

}