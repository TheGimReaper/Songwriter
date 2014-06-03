public class Song{
   ArrayList<ArrayList<Note>> Notes = new ArrayList<ArrayList<Note>>(); int bpm;
   int layers; int start; int end;
   Song(){
     layers = 4; start = 0; end = 4;bpm = 100;

      }
   void display(){
     for(int y = 1; y < 8; y++){
       for(int x = 1; x < 6; x++)
         line(200 , 150 + (10*x) + (100*y) , 1270 , 150 + (10*x) + (100*y));
      }   
   }
}
