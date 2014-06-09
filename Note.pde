public class Note {
  int coordx; String letter;
  int coordy; int length; int width;
  int time; int octave;
  PImage img;
  public Note(int x , int y , int a , PImage p, String c , int b , int d , int e){
    coordx = x; coordy = y; time = a; img = p; letter = c; length = b; width = d;
  }
  public PImage getimg(){
    return img; }
  public int get(){
    return time; }  
  public void display(){
    image(img , coordx , coordy , length , width);
  }
}

