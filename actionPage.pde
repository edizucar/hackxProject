class ActionPageManager{
    PageManager manager;
    ArrayList<Action> actions;
    ArrayList<BetterButton> buttons;
    
    int tabsHeight = 100;
    int sideBarWidth = 400;

    int buttonWidth = 350;
    int buttonHeight = 50;

    int listYStart = 200;



    ActionPageManager(PageManager manager){
        this.manager = manager;
        actions = new ArrayList<Action>();
        buttons = new ArrayList<BetterButton>();
        readActions();
        int yCoord = listYStart;
        for(Action action: actions) {
            BetterButton button = new BetterButton(100, yCoord, buttonWidth, buttonHeight, 100, 0, 0, action.name, 18, action.ldCost, action.scCost, action.piCost);
            buttons.add(button);
            yCoord += (buttonHeight + 40);
        }
    }

    void draw(){
        background(255);

        // Right hand sidebar
        push();
        translate(width - sideBarWidth,100);
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

        for(BetterButton button: buttons) {
            button.draw();
        }

        int lineHeight = listYStart;

        for(Action action: actions) {
            push();
            translate(100, lineHeight);
            boxOffset = 50;
            boxSize = 50;
            pointsTextOffset = 0;
            ipHeightOffset = 70;
            pointValyOffset = 10;
            pointValxOffset = 10;
            int ldW = 400; 
            int scW = 550;
            int piW = 700;

            fill(155,155,0);
            rect(ldW,0, boxSize,boxSize);

            fill(155,0,155);
            rect(scW,0, boxSize,boxSize);
            
            fill(0,155,155);
            rect(piW,0, boxSize,boxSize);

            // Counts
            pointValyOffset = 40;
            pointValxOffset = 15;
            fill(255,255,255);
            text(str(action.ldCost),ldW+pointValxOffset,pointValyOffset);
            text(str(action.scCost),scW+pointValxOffset,pointValyOffset);
            text(str(action.piCost),piW+pointValxOffset,pointValyOffset);
            fill(0,0,0);

            textSize(18);
            text("LD Cost", ldW+pointsTextOffset, ipHeightOffset);
            text("SC Cost", scW+pointsTextOffset, ipHeightOffset);
            text("PI Cost", piW+pointsTextOffset, ipHeightOffset);
            pop();
            lineHeight += (buttonHeight + 40);
        }


    }

    void readActions() {
        ///Reads all actions from a file to the actions list
        BufferedReader reader = createReader("./lib/actions.txt");
        String line = null;
        try {
            while ((line = reader.readLine()) != null) {
                Action action = new Action();
                action.extractString(line);
                actions.add(action);
                println(action.ldCost);
            }
            reader.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    void mouseClicked(){
        for(BetterButton button: buttons) {
            if(button.mouseOver()){
                println(button.text);
                if((ld >= button.ld) && (sc >= button.sc) && (pi >= button.pi)) {
                        ld -= button.ld;
                        sc -= button.sc;
                        pi -= button.pi;
                }
            }

        }
    }

}