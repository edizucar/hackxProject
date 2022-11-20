class Event {
    String title;
    String description;
    Location location;

    Event(String t, String desc, Location loc){
        title = t;
        description = desc;
        location = loc;
    }
}

Event randomEvent(String t, String desc){
    return new Event(t,desc,Location.values()[int(random(Location.values().length))]);
}