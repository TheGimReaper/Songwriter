public class NoteSwitch {
   boolean Is; int coordx; int coordy; int length; int width; color fill; Note ok; int duration;
   public NoteSwitch(Note x, int y, int z, int a, int b , int c){
     Is = false; coordx = y; coordy = z;length = a; width = b; fill = color(102, 102 ,255);ok = x;duration = c;
   }   
   public boolean get(){
     return Is; }
   public void check(){
     if (mouseX >= coordx && mouseX <= coordx + length && mouseY >= coordy && mouseY <= coordy + width)
        change();
   }
   public void display(){
    fill(fill);
    rect(coordx , coordy , length , width);
    ok.display();
   }
   public void change(){
     if (Is)
       turnoff();
     else
       turnon();
   }
   public void turnoff(){
     currentnote = -1;
     Is = false; fill = color (102 , 102 , 255); }
   public void turnon(){
     for (NoteSwitch x : notes)
       x.turnoff();
     currentnote = duration;  
     Is = true; fill = color (0 , 0 , 102); }
}

