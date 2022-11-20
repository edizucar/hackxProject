class ActionPageManager{
    PageManager manager;
    ArrayList<Action> actions;
    ArrayList<BetterButton> buttons;

    int buttonWidth = 350;
    int buttonHeight = 50;



    ActionPageManager(PageManager manager){
        this.manager = manager;
        actions = new ArrayList<Action>();
        buttons = new ArrayList<BetterButton>();
        readActions();
        int yCoord = 200;
        for(Action action: actions) {
            BetterButton button = new BetterButton(100, yCoord, buttonWidth, buttonHeight, 100, 0, 0, action.name, 10);
            buttons.add(button);
            yCoord += (buttonHeight + 10);
        }
    }

    void draw(){
        background(255);
        for(BetterButton button: buttons) {
            button.draw();
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
            }
            reader.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    void mouseClicked(){
        readActions();
        println(actions.get(0).name);
    }

}