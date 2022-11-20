class MainPageManager{
    PageManager manager;
    PImage ukImg;
    int tabsHeight = 100;
    int sideBarWidth = 400;
    int ld = 10, sc = 10, pi = 10;
    Button nextRoundButton;
    ArrayList<Event> events;
    Event currentEvent = null;


    MainPageManager(PageManager m){
        manager = m;
        ukImg = loadImage("./images/uk2.gif");
        ukImg.resize(ukImg.width*(height-tabsHeight)/ukImg.height,(height-tabsHeight));
        nextRoundButton = new Button(width - 200,height - 100,200,100,255,175,0,"Next Round");
        events = extractAllEvents();
        

        


    }

    void draw(){
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
            text("Round Number: " + str(roundNum),10,550);

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

        nextRoundButton.draw();
    }



    void mouseClicked(){
        if (nextRoundButton.mouseOver()){
            roundNum++;
            currentEvent = this.getNextEvent();
            println(roundNum);
            println(currentEvent.title);
            println(currentEvent.location);
            println("");
            
        }

    }

    private Event getNextEvent(){
        int dPH = abs(personalHappiness);
        int dSC = abs(securityConcern);
        int dNS = abs(nationalSecurity);
        EventType metric = EventType.PHH;

        if (dPH > dSC){
            if (dPH > dNS){
                metric = personalHappiness < 0 ? EventType.PHL : EventType.PHH;
            }
            else{
                metric = nationalSecurity < 0 ? EventType.NSL : EventType.NSH;
            }
        }
        else{
            if (dSC > dNS){
                metric = securityConcern < 0 ? EventType.SCL : EventType.SCH;
            }
            else{
                metric = nationalSecurity < 0 ? EventType.NSL : EventType.NSH;
            }
        }

        
        for (Event e : events){
            if (e.type == metric) {
                return e;
            }
        }
        return events.get(0);
    }

}

