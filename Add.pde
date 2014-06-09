public class Add {
   boolean Is; String text; int coordx; int coordy; int length; int width; color fill;
   public Add(String x, int a, int b, int y, int z){
     text = x; Is = false; coordx = y; coordy = z;length = a; width = b; fill = color(102, 255 , 102);
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
     Is = false; fill = color (102 , 255 , 102); }
   public void turnon(){
     Is = true; fill = color (0 , 102 , 0); }
}

