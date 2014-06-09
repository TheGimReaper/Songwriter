public class Instrument{
  String name = ""; Song notes = new Song(); int coordx; int coordy; boolean Is; int length; int width; color fill; int number;
  public Instrument(String x, int a, int b, int w, int y , int z){
    name = x; coordx = a; coordy = b; length = w; width = y; number = z; fill = color (102 , 102 , 255); }
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
    text(name , coordx + 10 , coordy + 30);
   }
   public void change(){
     if (Is)
       turnoff();
     else
       turnon();
   }
   public void setname(String x){
     name = x; }
   public String getname(){
     return name; }  
   public void setnumber(int x){
     number = x; }
   public Song getsong(){
     return notes; }  
   public void turnoff(){
     if (currentinstrument != number) {
        Is = false; fill = color (102 , 102 , 255); } }
   public void turnon(){
     currentinstrument = number;
     song = notes;
     for (Instrument x : Tabs)
       x.turnoff();  
     Is = true; fill = color (0 , 0 , 102); }
}
  

