class ActionPageManager{
    PageManager manager;
    ArrayList<Action> actions;

    ActionPageManager(PageManager manager){
        this.manager = manager;
        actions = new ArrayList<Action>();
    }

    void draw(){
        background(52);

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