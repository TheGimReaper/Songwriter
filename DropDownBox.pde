public class DropDownBox{
  color background = color(255 , 255 , 255);
  ArrayList<String> items; int coordx; int coordy;int length; int width;
  String current;
  DropDownBox(ArrayList<String> x){
    items = x;
  }
  void display(){
    rect(coordx , coordy , length , width);
    text(current , coordx , coordy);
  }
}
