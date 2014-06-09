public class OctaveSwitch {
   boolean Is; String text; int coordx; int coordy; int length; int width; color fill; int octavenumber;
   public OctaveSwitch(String x, int a, int b, int y, int z , int c){
     text = x; Is = false; coordx = y; coordy = z;length = a; width = b; fill = color(255, 102 , 102);octavenumber = c;
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
    textSize(15);
    fill(0);
    text(text , coordx + 10 , coordy + 30);
   }
   public void change(){
     if (Is)
       turnoff();
     else
       turnon();
   }
   public void turnoff(){
     if (currentoctave != octavenumber) {
       Is = false; fill = color (255 , 102 , 102); } }
   public void turnon(){
     currentoctave = octavenumber;  
     for (OctaveSwitch x : octave)
       x.turnoff();
     Is = true; fill = color (102 , 0 , 0); }
}

