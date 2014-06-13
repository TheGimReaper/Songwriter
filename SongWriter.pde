import java.util.*;
import org.jfugue.Player;
public ArrayList<NoteSwitch> notes = new ArrayList<NoteSwitch>(); public int currentnote = -1;
public Song song = new Song(); 
public ArrayList<Instrument> Tabs = new ArrayList<Instrument>(); public int currentinstrument; 
public ArrayList<OctaveSwitch> octave = new ArrayList<OctaveSwitch>(); public int currentoctave = 1;
public Switch play; public Switch add;
public Volume volume; public int first; public int second; public boolean alternate = true;
public Switch dotted; public Switch flat; public Switch sharp; boolean playing = false;
public String currentname = "";
void setup() {
   size(1050, 750 , P2D);
   background(150, 150, 150);
   PImage img = loadImage("0note.png");
   notes.add(new NoteSwitch(new Note(50 , 0 , 0 , img , "C" , 50 , 100 , currentoctave) , 0 , 0 , 150 , 100 , 0));
   for (int x = 0; x < 6; x++){
     img = loadImage((int)Math.pow(2 , x) + "note.png");
     notes.add(new NoteSwitch(new Note((x+1)*150 + 50 , 0 , (int)Math.pow(2 , x) , img ,  "C" , 50 , 100 , currentoctave) , (x+1)*150 , 0 , 210 , 100 , (int)Math.pow(2 , x)));
   }
   dotted = new Switch("Dotted" , 75 , 35 , 200 , 100);
   flat = new Switch("Flat" , 75 , 35 , 200 , 135);
   sharp = new Switch("Sharp" , 75 , 35 , 200 , 170);
   play = new Switch("Play" , 50 , 50 , 950 , 150);
   volume = new Volume(50 , 75 , 50 , 800 , 150);
   add = new Switch("Add" , 75 , 50 , 50 , 150);
   for (int x = 0; x < 8; x++)
     octave.add(new OctaveSwitch( "" + (x + 1) , 50 , 50 , 300 + (50*x) , 150 , x + 1));
   for(int x = 0; x < notes.size(); x++)
     notes.get(x).display();
   for(int x = 0; x < octave.size(); x++)
     octave.get(x).display();  
   octave.get(0).turnon();  
   song.display();
   dotted.display();
   flat.display();
   sharp.display();
   add.display();
}
void draw() {
   for(int x = 0; x < notes.size(); x++)
     notes.get(x).display();   
   for(int x = 0; x < octave.size(); x++)
     octave.get(x).display();  
   for(int x = 0; x < Tabs.size(); x++)
     Tabs.get(x).display();      
   song.display();
   dotted.display();
   flat.display();
   sharp.display();
   play.display();
   volume.display();
   add.display();
   if (play.get() && !playing){
     Player player = new Player();
     String total = "x[Volume]=" + volume.getvolume() * 160 + " ";
     for (int y = 0; y < Tabs.size(); y++ ){
       total += "V[" + y + "] " + D4i E4i F#4q A4q F#4q E4q D4h. F#4i A4i B4q D5q C#5q A4q F#4h E4q D4i E4i F#4q A4q F#4q E4q D4h. F#4i A4i B4h B4i B4i A4i F#4i E4w D4i E4i F#4w Rq Ri
F#4i B4i C#5i D5q. E5s D5s C#5q A4q F#4h E4q D4i E4i F#4w F#4q Rq. F#4i B4i C#5i D5h E5q. D5s E5s F#5h F#5i D5i B4i D5i D5q A4h.";
       Song play = Tabs.get(y).getsong();
       for (Note x: play.getNotes()){
         total += x.stringify() + " "; }
       }
     player.play(total);  
     play.turnoff();  
   } 
}
void mouseClicked(){
   for(int x = 0; x < notes.size(); x++)
     notes.get(x).check();
   for(int x = 0; x < octave.size(); x++)
     octave.get(x).check();    
   for(int x = 0; x < Tabs.size(); x++)
     Tabs.get(x).check();   
   song.check(); 
   dotted.check();
   flat.check();  
   sharp.check();    
   play.check();
   volume.check();
   add.check();
}
void keyPressed(){
   if (volume.get()){
     if (key == '0'){
        if (alternate){
          first = 0; alternate = false; }
        else{
          second = 0; alternate = true; }
     } 
     if (key == '1'){
        if (alternate){
          first = 1; alternate = false; }
        else{
          second = 1; alternate = true; }
     } 
     if (key == '2'){
        if (alternate){
          first = 2; alternate = false; }
        else{
          second = 2; alternate = true; }
     }     
     if (key == '3'){
        if (alternate){
          first = 3; alternate = false; }
        else{
          second = 3; alternate = true; }
     }      
     if (key == '4'){
        if (alternate){
          first = 4; alternate = false; }
        else{
          second = 4; alternate = true; }
     }      
     if (key == '5'){
        if (alternate){
          first = 5; alternate = false; }
        else{
          second = 5; alternate = true; }
     }   
     if (key == '6'){
        if (alternate){
          first = 6; alternate = false; }
        else{
          second = 6; alternate = true; }
     } 
     if (key == '7'){
        if (alternate){
          first = 7; alternate = false; }
        else{
          second = 7; alternate = true; }
     } 
     if (key == '8'){
        if (alternate){
          first = 8; alternate = false; }
        else{
          second = 8; alternate = true; }
     } 
     if (key == '9'){
        if (alternate){
          first = 9; alternate = false; }
        else{
          second = 9; alternate = true; }
     } 
     volume.setVolume(10 * first + second);  
   }  
   if (add.get()){
     if (key == 'A')
       currentname += "A";
     if (key == 'B')
       currentname += "B";
     if (key == 'C')
       currentname += "C";
     if (key == 'D')
       currentname += "D";
     if (key == 'E')
       currentname += "E";
     if (key == 'F')
       currentname += "F";
     if (key == 'G')
       currentname += "G";
     if (key == 'H')
       currentname += "H";
     if (key == 'I')
       currentname += "I";
     if (key == 'J')
       currentname += "J";
     if (key == 'K')
       currentname += "K";
     if (key == 'L')
       currentname += "L";
     if (key == 'M')
       currentname += "M";
     if (key == 'N')
       currentname += "N";
     if (key == 'O')
       currentname += "O";
     if (key == 'P')
       currentname += "P";
     if (key == 'Q')
       currentname += "Q";
     if (key == 'R')
       currentname += "R";
     if (key == 'S')
       currentname += "S";
     if (key == 'T')
       currentname += "T";
     if (key == 'U')
       currentname += "U";
     if (key == 'V')
       currentname += "V";
     if (key == 'W')
       currentname += "W";
     if (key == 'X')
       currentname += "X";
     if (key == 'Y')
       currentname += "Y";
     if (key == 'Z')
       currentname += "Z";
     if (keyCode == ENTER){
       Tabs.add(new Instrument(currentname , 0 , 200 + Tabs.size() * 50 , 75 , 50 , Tabs.size()));
       currentname = ""; add.turnoff();
     }
   }
   /*if (keyCode == BACKSPACE){
     Tabs.remove(currentinstrument);
     for (int x = 0; x < Tabs.size(); x++)
       Tabs.get(x).setnumber(x); } */
}
