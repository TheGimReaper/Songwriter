public class DropDownBox{
  color fill;
  ArrayList<String> items; int coordx; int coordy;int length; int width; boolean clicked;
  String current;int currentplace;
  DropDownBox(ArrayList<String> x, int a, int b, int c, int d){
    items = x;length = a;width = b;coordx = c;coordy = d;
  }
  void display(){
    rect(coordx , coordy , length , width);
    text(current , coordx , coordy);
  }
  void mouseClicked(){
    
  }
      
}
