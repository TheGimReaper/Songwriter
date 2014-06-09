public class Note {
  int coordx; String letter; boolean dotted; boolean flat; boolean sharp;
  int coordy; int length; int width;
  int time; int octave;
  PImage img;
  public Note(int x , int y , int a , PImage p, String c , int b , int d , int e){
    coordx = x; coordy = y; time = a; img = p; letter = c; length = b; width = d;
  }
  public Note(int x , int y , int a , PImage p, int q , String c , int b , int d , boolean m , boolean n , boolean o){
    coordx = x; coordy = y; time = a; img = p; octave = q; letter = c; length = b; width = d; dotted = m;flat = n;sharp = o;
  }
  public PImage getimg(){
    return img; }
  public int get(){
    return time; }  
  public String stringify(){
    String ans = "I[" + Tabs.get(currentinstrument).getname() + "] ";
    if (time == 0)
      letter = "R";
    ans += letter; 
    if (flat)
      ans += "b";
    else if (sharp)
      ans += "#";
    if (time == 1)
      ans += "w";
    if (time == 2)
      ans += "h"; 
    if (time == 4)
      ans += "q";
    if (time == 8)
      ans += "i";
    if (time == 16)
      ans += "s";
    if (time == 32)
      ans += "t";  
    if (dotted)
      ans += "."; 
    return ans;  
  }
  public void display(){
    fill(0);
    if (dotted)
      ellipse(coordx + 20 , coordy , 5 , 5);
    if (flat)
      image(loadImage("flat.png") , coordx + 20 , coordy , 10 , 10);
    else if (sharp)
      image(loadImage("sharp.png") , coordx + 20 , coordy , 10 , 10);
    image(img , coordx , coordy , length , width);
  }
}

