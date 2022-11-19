class MainPageManager{
    PageManager manager;
    PImage ukImg;
    int tabsHeight = 100;
    int sideBarWidth = 400;
    int ld = 10, sc = 10, pi = 10;

    MainPageManager(PageManager m){
        manager = m;
        ukImg = loadImage("./images/uk2.gif");
        ukImg.resize(ukImg.width*(height-tabsHeight)/ukImg.height,(height-tabsHeight));
    }

    void draw(){
        int roundNum = 1;
        background(50);

        
        push();
        translate(0,tabsHeight);

            // Map
            push();
            translate(0,0);
            rect(0,0,width-sideBarWidth,height-tabsHeight);
            image(ukImg,0,0);
            pop();

            // Right hand sidebar
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
    }



    void mouseClicked(){
        

    }

}

