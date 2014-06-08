public class NoteSwitch {
   boolean Is; int coordx; int coordy; int length; int width; color fill; PImage img;
   public NoteSwitch(PImage x, int y, int z, int a, int b){
     Is = false; coordx = y; coordy = z;length = a; width = b; fill = color(0, 0 ,102);img = x;
   }   
   public boolean get(){
     return Is; }
   public void mouseClicked(){
     if (mouseX >= coordx && mouseX <= coordx + length && mouseY >= coordy && mouseY <= coordy + width)
        change();
   }
   public void display(){
    fill(fill);
    rect(coordx , coordy , length , width);
    image(img , coordx + 75 , coordy , 50 , 100); 
   }
   public void change(){
     if (Is)
       turnoff();
     else
       turnon();
   }
   public void turnoff(){
     Is = false; fill = color (102 , 102 , 255); }
   public void turnon(){
     Is = true; fill = color (0 , 0 , 102); }
}

