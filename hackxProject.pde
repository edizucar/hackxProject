int started = 0;
PageManager manager;
int roundNum = 0;
HashMap<String,EventType> EThm;


boolean canBuySurveil = true;

int personalHappiness = 0;
int securityConcern = 0;
int nationalSecurity = 0;
int ld = 15,rLD = 0;
int sc = 20, rSC = 0;
int pi = 13, rPI = 0;

PFont font;

void setup(){
    size(1400,800);

    EThm = new HashMap<String,EventType>();
    EThm.put("PH+",EventType.PHH);
    EThm.put("PH-",EventType.PHL);
    EThm.put("SC+",EventType.SCH);
    EThm.put("SC-",EventType.SCL);
    EThm.put("NS+",EventType.NSH);
    EThm.put("NS-",EventType.NSL);

    font = createFont("Arial", 16, true);
    textFont(font,36);


    manager = new PageManager();
}

void draw(){
    manager.draw();
}



void mousePressed(){
    manager.mouseClicked();
}

