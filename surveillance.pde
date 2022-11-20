class SurveillancePageManager{
    PageManager manager;
    PImage ukImg;    

    Button trafficCameras, cctv, licensePlate, facialRecog, drones;

    SurveillancePageManager(PageManager m){
        manager = m;
        int heightOfButtons = 30;
        int widthOfButtons = 100;
        //int xPos, int yPos, int w, int h, int red, int green, int blue, String txt
        trafficCameras = new Button(200,(height-100)/6 /2,  widthOfButtons, heightOfButtons, 255,0,0, "");
        cctv = new Button(400,(height-100)/6 /3,  widthOfButtons, heightOfButtons, 255,0,0, "");
        licensePlate = new Button(400,2*(height-100)/6 /3,  widthOfButtons, heightOfButtons, 255,0,0, "");
        facialRecog = new Button(600,(height-100)/6 /5,  widthOfButtons, heightOfButtons, 255,0,0, "");
        drones = new Button(600,2*(height-100)/6 /4,  widthOfButtons, heightOfButtons, 255,0,0, "");
    }

    //So do I define a tree which is made of buttons 
    //I cant even get the text to work.

    void draw(){
        background(50);
        
        int heightOfTabs = 100;
        int heightOfSection = (height-heightOfTabs)/6;
        int widthOfInventory = 80;
        int sectionNum = 0;
        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Cameras", 0, 36);

        rectMode(CENTER);
        trafficCameras.draw();
        cctv.draw();
        licensePlate.draw();
        drones.draw();
        facialRecog.draw();
        rectMode(CORNER);



        pop();
        sectionNum++;

        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Social Media",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Internet of Things",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Portables",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Money",0.5, 36);
        pop();
        sectionNum++;

        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Internet Usage",0.5, 36);
        pop();
       

    }
   void mouseClicked(){


    }

}

