class BetterButton {
    int x,y,buttonWidth,buttonHeight,r,g,b, txtR, txtG, txtB, textSize, textWidth, ld, sc, pi;
    boolean active = true;
    String text;
    boolean selected = false;


    BetterButton(int xPos, int yPos, int w, int h, int red, int green, int blue, String txt, int textSize, int l, int s, int p){
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
        
        this.textSize = textSize;
        ld = l;
        sc = s;
        pi = p;
    }


    void draw(){
        int alpha = this.mouseOver() ? 100 : 255;
        push();
        if (active){
            fill(r,g,b,alpha);
            textAlign(CENTER);
            rect(x,y,buttonWidth,buttonHeight);
            fill(txtR,txtG,txtB,alpha);
            textSize(textSize);
            
            text(text,x + buttonWidth/2,y+ buttonHeight/2, buttonWidth);
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

    void setColour(int r, int g, int b){
        this.r = r;
        this.g = g;
        this.b = b;
    }

    boolean mouseOver(){
        return ((mouseX > x && mouseX < x+buttonWidth) && (mouseY > y && mouseY < y+buttonHeight));
    }
}