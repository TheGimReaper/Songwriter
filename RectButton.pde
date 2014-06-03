class RectButton {
  int coordx; int coordy; int length; int width;color fill;
  RectButton(int x, int y, int a, int b, color c){
    coordx = x; coordy = y;length = a; width = b;fill = c;
  }
  void display() {
    fill(fill);
    rect(coordx , coordy , length , width);
  }
}
