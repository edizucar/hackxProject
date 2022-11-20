class SurveillancePageManager{
    PageManager manager;
    PImage ukImg;    
    int tabsHeight = 100;
    int sideBarWidth = 400;
    int ld = 10, sc = 10, pi = 10, roundNum=1;
    


    Button trafficCameras, cctv, licensePlate, facialRecog, drones;

    SurveillancePageManager(PageManager m){
        manager = m;
        int heightOfButtons = 30;
        int widthOfButtons = 100;
        //int xPos, int yPos, int w, int h, int red, int green, int blue, String txt
        trafficCameras = new Button(200,tabsHeight+  (height-100)/6 /2,  widthOfButtons, heightOfButtons, 255,0,0, "");
        cctv = new Button(400,(height-100)/6 /3,  widthOfButtons, heightOfButtons, 255,0,0, "");
        licensePlate = new Button(400,2*(height-100)/6 /3,  widthOfButtons, heightOfButtons, 255,0,0, "");
        facialRecog = new Button(600,(height-100)/6 /5,  widthOfButtons, heightOfButtons, 255,0,0, "");
        drones = new Button(600,2*(height-100)/6 /4,  widthOfButtons, heightOfButtons, 255,0,0, "");
    }

    //So do I define a tree which is made of buttons 
    //I cant even get the text to work.

    void draw(){
        background(50);
        
        push();
        translate(0,tabsHeight);
        push();
            translate(width - sideBarWidth,0);
            fill(255,0,0);
            rect(0,0,sideBarWidth,height);

            int boxOffset = 50;
            int boxSize = 100;
            int pointsTextOffset = boxOffset + boxSize + 10;
            int ipHeightOffset = 36;
            int ldHeight = 60 , scHeight = 210, piHeight = 360;

            fill(155,155,0);
            rect(boxOffset,ldHeight, boxSize,boxSize);

            fill(155,0,155);
            rect(boxOffset,scHeight, boxSize,boxSize);
            
            fill(0,155,155);
            rect(boxOffset,piHeight, boxSize,boxSize);
        
            // Text:
            fill(255);
            text("Information Points",10,36);
            text("Round Number: " + str(roundNum),10,600);

            // Counts
            int pointValyOffset = 65;
            int pointValxOffset = 30;
            text(str(ld),boxOffset+pointValxOffset,ldHeight+pointValyOffset);
            text(str(sc),boxOffset+pointValxOffset,scHeight+pointValyOffset);
            text(str(pi),boxOffset+pointValxOffset,piHeight+pointValyOffset);

            textSize(18);
            text("Location\n Data", pointsTextOffset, ldHeight+ipHeightOffset);
            text("Social\n Connections", pointsTextOffset, scHeight+ipHeightOffset);
            text("Personal\n Interests", pointsTextOffset, piHeight+ipHeightOffset);


            pop();
        pop();
        int heightOfTabs = 100;
        int heightOfSection = (height-heightOfTabs)/6;
        int widthOfInventory = 400;
        int sectionNum = 0;
        push();
        translate(0,heightOfTabs+heightOfSection*sectionNum);
        fill(255,255,255);
        rect(0, 0, width-widthOfInventory, heightOfSection);
        fill(0);
        text("Cameras", 0, 36);
        pop();

        push();

        trafficCameras.setCentre();
        trafficCameras.setCoords(200,tabsHeight+ sectionNum*heightOfSection+ heightOfSection/2);
        trafficCameras.draw();
        cctv.setCentre();
        cctv.setCoords(400, tabsHeight+sectionNum*heightOfSection+ heightOfSection/3);
        cctv.draw();
        licensePlate.setCentre();
        licensePlate.setCoords(400,tabsHeight+sectionNum*heightOfSection+ heightOfSection*2/3);
        licensePlate.draw();
        drones.setCentre();
        drones.setCoords(600,tabsHeight+sectionNum*heightOfSection+ heightOfSection/5);
        drones.draw();
        facialRecog.setCentre();
        facialRecog.setCoords(600,tabsHeight+sectionNum*heightOfSection+ heightOfSection/2);
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
        if (trafficCameras.mouseOver()){
            println("OMG YOU SO COOL YOU BOUGHT TRAFFIC CAMERAS");
        }

    }

}

