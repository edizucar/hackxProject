class Button {
    int x,y,buttonWidth,buttonHeight,r,g,b, txtR, txtG, txtB;
    int textSize = 36;
    boolean active = true;
    String text;


    Button(int xPos, int yPos, int w, int h, int red, int green, int blue, String txt){
        x = xPos;
        y = yPos;

        buttonWidth = w;
        buttonHeight = h;

        r = red;
        g = green;
        b = blue;
        text = txt;

        txtR = 255;
        txtG = 255;
        txtB = 255;
        
    }

    void draw(){
        push();
        if (active){
            fill(r,g,b);
            textAlign(CENTER);
            rect(x,y,buttonWidth,buttonHeight);
            fill(txtR,txtG,txtB);
            textSize(textSize);
            text(text,x + buttonWidth/2,y+ buttonHeight/2);
        }
        pop();

    }


    void activate(){
        active = true;
    }

    void deactive(){
        active = false;
    }

    boolean isActive(){
        return active;
    }

    void setTextSize(int ts){
        textSize = ts;
    }

    void setTextColour(int textR, int textG, int textB){
        txtR = textR;
        txtG = textG;
        txtB = textB;
    }

    boolean mouseOver(){
        return ((mouseX > x && mouseX < x+buttonWidth) && (mouseY > y && mouseY < y+buttonHeight));
    }




}