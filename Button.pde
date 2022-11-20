class Button {
    int x,y,buttonWidth,buttonHeight,r,g,b, txtR, txtG, txtB;
    int textSize = 36;
    boolean active = true;
    String text;
    boolean selected = false;
    boolean centered = false;


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
        int alpha = this.mouseOver() ? 100 : 255;
        push();
        if (active){
            fill(r,g,b,alpha);
            textAlign(CENTER);
            if (centered){
                rectMode(CENTER);
            }
            rect(x,y,buttonWidth,buttonHeight);
            fill(txtR,txtG,txtB,alpha);
            if (centered){
                rectMode(CORNER);
            }
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

    void setColour(int r, int g, int b){
        this.r = r;
        this.g = g;
        this.b = b;
    }

    void setCoords(int newX,int newY){
        x = newX;
        y = newY;
    }

    void setCentre(){
        centered = true;
    }

    boolean mouseOver(){
        if (centered == true){
            return ((mouseX > (x-buttonWidth/2) && mouseX < (x+buttonWidth/2)) && (mouseY > (y-buttonHeight/2) && mouseY < (y+buttonHeight/2)));
        }
        else{
            return ((mouseX > x && mouseX < x+buttonWidth) && (mouseY > y && mouseY < y+buttonHeight));
        }
    }





}