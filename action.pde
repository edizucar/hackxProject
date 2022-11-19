class Action {
    ///Object representing an action a player can take

    //ld - location data
    //sc - social connections
    //pi - personal interests
    String name;
    int ldCost;
    int scCost;
    int piCost;
    int happinessChange;
    int concernChange;
    int securityChange;

    Action() {

    }

    void extractString(String sourceString) {
        String[] source = split(sourceString, ',');
        this.name = source[0];
        this.ldCost = int(source[1]);
        this.scCost = int(source[2]);
        this.piCost = int(source[3]);
        this.happinessChange = int(source[4]);
        this.concernChange = int(source[5]);
        this.securityChange = int(source[6]);
    }

    void assignValues(String name, int ldCost, int scCost, int piCost, int happinessChange, int concernChange, int securityChange) {
        this.name = name;
        this.scCost = scCost;
        this.piCost = piCost;
        this.happinessChange = happinessChange;
        this.concernChange = concernChange;
        this.securityChange = securityChange;
    }
}