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
   /*if (play.get() && !playing){
     Player player = new Player();
     String total = "";
     for (Note x: song.getNotes()){
       total += x.stringify(); }
     player.play(total);  } */
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
     if (key == 'a')
       currentname += "a";
     if (key == 'b')
       currentname += "b";
     if (key == 'c')
       currentname += "c";
     if (key == 'd')
       currentname += "d";
     if (key == 'e')
       currentname += "e";
     if (key == 'f')
       currentname += "f";
     if (key == 'g')
       currentname += "g";
     if (key == 'h')
       currentname += "h";
     if (key == 'i')
       currentname += "i";
     if (key == 'j')
       currentname += "j";
     if (key == 'k')
       currentname += "k";
     if (key == 'l')
       currentname += "l";
     if (key == 'm')
       currentname += "m";
     if (key == 'n')
       currentname += "n";
     if (key == 'o')
       currentname += "o";
     if (key == 'p')
       currentname += "p";
     if (key == 'q')
       currentname += "q";
     if (key == 'r')
       currentname += "r";
     if (key == 's')
       currentname += "s";
     if (key == 't')
       currentname += "t";
     if (key == 'u')
       currentname += "u";
     if (key == 'v')
       currentname += "v";
     if (key == 'w')
       currentname += "w";
     if (key == 'x')
       currentname += "x";
     if (key == 'y')
       currentname += "y";
     if (key == 'z')
       currentname += "z";
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
