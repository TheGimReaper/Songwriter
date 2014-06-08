public class Song{
   ArrayList<ArrayList<Note>> Notes = new ArrayList<ArrayList<Note>>(); int bpm;
   int layers; int start; int end;
   Song(){
     layers = 4; start = 0; end = 4;bpm = 100;
      }
   void display(){
     for(int y = 1; y < 8; y++){
       for(int x = 1; x < 6; x++){
         line(150 , 150 + (10*x) + (75*y) , 950 , 150 + (10*x) + (75*y));
         if ( x < 4 )
           line (150 + 200 * x , 150 + (75 * y) , 150 + 200 * x , 210 + (75 * y) );
       }
      }
   }   
   void mouseclicked (){
     
   }  
}
