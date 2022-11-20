class SurveillancePageManager{
    PageManager manager;
    PImage ukImg;    
    int tabsHeight = 100;
    int sideBarWidth = 400;

    String clickedLast ="";
    int amountClicked=0;
    boolean tCamerasBought = false;
    boolean cctvBought = false;
    boolean facialRecogBought = false;
    boolean licensePlateBought= false;
    boolean dronesBought = false;
    


    Button trafficCameras, cctv, licensePlate, facialRecog, drones;

    SurveillancePageManager(PageManager m){
        manager = m;
        int heightOfButtons = 35;
        int widthOfButtons = 100;
        //int xPos, int yPos, int w, int h, int red, int green, int blue, String txt
        trafficCameras = new Button(200,tabsHeight+  (height-100)/6 /2,  widthOfButtons, heightOfButtons, 255,0,0, "Traffic Cameras");
        cctv = new Button(400,(height-100)/6 /3,  widthOfButtons, heightOfButtons, 255,0,0, "CCTV");
        licensePlate = new Button(400,2*(height-100)/6 /3,  widthOfButtons, heightOfButtons, 255,0,0, "License Plate\nRecognition");
        facialRecog = new Button(600,(height-100)/6 /5,  widthOfButtons, heightOfButtons, 255,0,0, "Facial\nRecognition");
        drones = new Button(600,2*(height-100)/6 /4,  widthOfButtons, heightOfButtons, 255,0,0, "Drones");
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
        line(200,tabsHeight+ sectionNum*heightOfSection+ heightOfSection/2, 400, tabsHeight+sectionNum*heightOfSection+ heightOfSection/3);
        line(200,tabsHeight+ sectionNum*heightOfSection+ heightOfSection/2, 400 ,tabsHeight+sectionNum*heightOfSection+ heightOfSection*2/3);
        trafficCameras.setCentre();
        trafficCameras.setCoords(200,tabsHeight+ sectionNum*heightOfSection+ heightOfSection/2);
        trafficCameras.setTextSize(14);
        trafficCameras.draw();
        line(400, tabsHeight+sectionNum*heightOfSection+ heightOfSection/3, 600,tabsHeight+sectionNum*heightOfSection+ heightOfSection/5);
        line(400, tabsHeight+sectionNum*heightOfSection+ heightOfSection/3, 600,tabsHeight+sectionNum*heightOfSection+ heightOfSection*3/5);
        cctv.setCentre();
        cctv.setCoords(400, tabsHeight+sectionNum*heightOfSection+ heightOfSection/3);
        cctv.setTextSize(14);
        cctv.draw();
        licensePlate.setCentre();
        licensePlate.setCoords(400,tabsHeight+sectionNum*heightOfSection+ heightOfSection*2/3);
        licensePlate.setTextSize(12);
        licensePlate.draw();
        drones.setCentre();
        drones.setCoords(600,tabsHeight+sectionNum*heightOfSection+ heightOfSection/5);
        drones.setTextSize(14);
        drones.draw();
        facialRecog.setCentre();
        facialRecog.setCoords(600,tabsHeight+sectionNum*heightOfSection+ heightOfSection*3/5);
        facialRecog.setTextSize(12);
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
       
         if(trafficCameras.mouseOver()){
            push();
            translate(200,tabsHeight+ 0*heightOfSection+ heightOfSection/2);
            fill(255,255,255);
            rect(0,0, 400,100);
            fill(0,0,0);
            textSize(10);
            text("Traffic cameras are cameras places on roads that can keep track of the rate of traffic,\n allowing better understanding of how people move around.\nThis will give you an extra 1 location data a turn.",0,10);
            pop();
        }

        if(cctv.mouseOver()){
            push();
            translate(200,tabsHeight+ 0*heightOfSection+ heightOfSection/2);
            fill(255,255,255);
            rect(0,0, 400,100);
            fill(0,0,0);
            textSize(10);
            text("CCTV cameras can constantly record videos of different locations,\nallowing you to see who was in a place at a particular time.\nThis will give you 1 location data and 1 social connections data",0,10);
            pop();
        }

        if(facialRecog.mouseOver()){
            push();
            translate(200,tabsHeight+ 0*heightOfSection+ heightOfSection/2);
            fill(255,255,255);
            rect(0,0, 400,100);
            fill(0,0,0);
            textSize(10);
            text("Facial recognition software in CCTV allows the owner of the cameras to immediately\nsearch all stored videos for the appearance of a person.\nThis will give you 2 location data, 1 social connections data and 1 personal interests data.",0,10);
            pop();
        }

        if(licensePlate.mouseOver()){
            push();
            translate(200,tabsHeight+ 0*heightOfSection+ heightOfSection/2);
            fill(255,255,255);
            rect(0,0, 400,100);
            fill(0,0,0);
            textSize(10);
            text("License plate recognition allows you to track a particular car and how it moves a country.\nThis allows for finer tracking of vehicles.\nThis will give you 2 location data and 1 social connections data.",0,10);
            pop();
        }

        if(drones.mouseOver()){
            push();
            translate(200,tabsHeight+ 0*heightOfSection+ heightOfSection/2);
            fill(255,255,255);
            rect(0,0, 400,100);
            fill(0,0,0);
            textSize(10);
            text("Drones with CCTV images allows you to dynamically move the cameras you control.\nThis allows you to track anywhere you want at any time. \nThis will give you 2 location data and 1 social connections data.",0,10);
            pop();
        }

    }
   void mouseClicked(){
        
        if (trafficCameras.mouseOver() && !tCamerasBought){
            tCamerasBought = true;
            trafficCameras.setColour(0,140,0);
            rLD++;
        }

        if (cctv.mouseOver() && !cctvBought && tCamerasBought){
            cctvBought = true;
            cctv.setColour(0,140,0);
            rLD++;
            rSC++;
        }

        if (facialRecog.mouseOver() && cctvBought  && !facialRecogBought){
            facialRecogBought = true;
            facialRecog.setColour(0,140,0);
            rLD++;
            rLD++;
            rSC++;
            rPI++;
        }

        if (licensePlate.mouseOver() && tCamerasBought  && !licensePlateBought){
            licensePlateBought = true;
            licensePlate.setColour(0,140,0);
            rLD++;
            rLD++;
            rSC++;
        }

        if (drones.mouseOver() && cctvBought  && !dronesBought){
            dronesBought = true;
            drones.setColour(0,140,0);
            rLD++;
            rLD++;
            rSC++;
        }

    }

}

