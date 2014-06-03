import java.util.*;
ArrayList<RectButton> notes = new ArrayList<RectButton>(); Song song = new Song();
void setup() {
   size(1470, 960 , P2D);
   background(150, 150, 150);
   for (int x = 0; x < 7; x++){
     notes.add(new RectButton(x*210 , 0 , 210 , 100, color (0 , 0 ,255)));
     notes.get(x).display();
   }
   PImage img = loadImage("0note.png");
   image(img , 75 , 0, 50, 100);
   for (int x = 0; x < 6; x+=1){
     img = loadImage((int)Math.pow(2,x) + "note.png");
     image(img , (x + 1)*210 + 75 , 0 , 50 , 100);  
   }
   song.display();
}
