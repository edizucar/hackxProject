

class Event {
    String title;
    String description;
    Location location;
    EventType type;

    Event(String t, String desc, Location loc, EventType ty){
        title = t;
        description = desc;
        location = loc;
        type = ty;
    }


}

Event randomEvent(String t, String desc, EventType ty){
    return new Event(t,desc,Location.values()[int(random(Location.values().length))],ty);
}

ArrayList<Event> extractEvents(String s){
    ArrayList<Event> events = new ArrayList<>();
    String[] source = split(s, ',');
    String title = source[0];
    String desc = source[1];


    EventType type = EThm.get(source[2]);

    for (Location loc : Location.values()){
        events.add(new Event(title,desc,loc,type));
    }

    return events;


}

ArrayList<Event> extractAllEvents(){
    ArrayList<Event> events = new ArrayList<>();
    BufferedReader reader = createReader("./lib/events.txt");
    String line = null;
    try {
        while ((line = reader.readLine()) != null) {          
            events.addAll(extractEvents(line));
        }
        reader.close();
    }
    catch (IOException e) {
        e.printStackTrace();
    }
    return events;
}