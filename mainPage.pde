class MainPageManager{
    PageManager manager;
    PImage ukImg;    

    MainPageManager(PageManager m){
        manager = m;
        ukImg = loadImage("./images/uk2.gif");
        ukImg.resize(ukImg.width*height/ukImg.height,height);
    }

    void draw(){
        background(50);
        image(ukImg,width/2-ukImg.width/2,0);
        
        push();
        translate(width - 350,10);
        fill(255,0,0);
        rect(0, 0, 300, height - 20);
        fill(255);
        text("Data", 10, 36);
        pop();

        push();
        translate(50,10);
        
        fill(0,255,0);
        rect(0, 0, 300, height - 20);
        fill(255);
        text("Actions", 10, 36);
        pop();

        
       

    }



    void mouseClicked(){


    }

}

