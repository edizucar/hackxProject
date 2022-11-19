class SurveillancePageManager{
    PageManager manager;
    PImage ukImg;    

    SurveillancePageManager(PageManager m){
        manager = m;
        ukImg = loadImage("./images/uk2.gif");
        ukImg.resize(ukImg.width*height/ukImg.height,height);
        
        
    }

    void draw(){
        background(50);
        
        int heightOfTabs = 60;
        int heightOfSection = (height-heightOfTabs)/6;
        int widthOfInventory = 80;
        int sectionNum = 0;
        push();
        translate(10,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Cameras", 0, 36);
        pop();
        sectionNum++;

        push();
        translate(10,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Social Media",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(10,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Internet of Things",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(10,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Portables",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(10,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Money",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(10,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Internet Usage",0.5, 36);
        pop();
       

    }
   void mouseClicked(){


    }

}

