import java.util.*;
import org.jfugue.Player;
public ArrayList<NoteSwitch> notes = new ArrayList<NoteSwitch>(); Song song = new Song(); ArrayList<Instrument> Tabs = new ArrayList<Instrument>();
void setup() {
   size(1050, 750 , P2D);
   background(150, 150, 150);
   PImage img = loadImage("0note.png");
   notes.add(new NoteSwitch(img, 0 , 0 , 150 , 100));
   for (int x = 0; x < 6; x++){
     img = loadImage((int)Math.pow(2 , x) + "note.png");
     notes.add(new NoteSwitch(img , (x+1)*150 , 0 , 210 , 100));
   }
   for(int x = 0; x < notes.size(); x++)
     notes.get(x).display();
   song.display();
   
}
void draw() {
   for(int x = 0; x < notes.size(); x++)
     notes.get(x).display();
   song.display();
}
void mouseClicked(){
   for(int x = 0; x < notes.size(); x++)
     notes.get(x).check();
}
