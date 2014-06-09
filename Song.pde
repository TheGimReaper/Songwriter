public class Song{
   ArrayList<Note> Notes = new ArrayList<Note>(); int bpm;
   int layers; int start; int end;
   Song(){
     layers = 7; start = 0; end = 7;bpm = 100;
      }
   public ArrayList<Note> getNotes(){   
     return Notes; }
   void display(){
     for(int y = 1; y < 8; y++){
       for(int x = 1; x < 6; x++){
         line(150 , 150 + (10*x) + (75*y) , 950 , 150 + (10*x) + (75*y));
         if ( x < 4 )
           line (150 + 200 * x , 150 + (75 * y) , 150 + 200 * x , 210 + (75 * y) );
       }
      }
     for (Note x : Notes){
      x.display(); }
   }   
   void check (){
     if (currentnote == -1 && Notes.size() > 0){
       Notes.remove(Notes.size() - 1); }
     else if (currentnote != - 1) {  
       PImage load = loadImage(currentnote + "note.png");
       if (mouseX >= 150 && mouseX <= 950 && mouseY >= 235 && mouseY <= 725){
         if (mouseY >= 235 && mouseY <= 275){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 235 && mouseY <= 238){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 239 && mouseY <= 243){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 244 && mouseY <= 248){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 249 && mouseY <= 253){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 254 && mouseY <= 258){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 259 && mouseY <= 263){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 264 && mouseY <= 268){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 269 && mouseY <= 273){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 274 && mouseY <= 275){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 235 && mouseY <= 238){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 239 && mouseY <= 243){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 244 && mouseY <= 248){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 249 && mouseY <= 253){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 254 && mouseY <= 258){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 259 && mouseY <= 263){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 264 && mouseY <= 268){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 269 && mouseY <= 273){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 274 && mouseY <= 275){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 235 && mouseY <= 238){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 239 && mouseY <= 243){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 244 && mouseY <= 248){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 249 && mouseY <= 253){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 254 && mouseY <= 258){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 259 && mouseY <= 263){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 264 && mouseY <= 268){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 269 && mouseY <= 273){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 274 && mouseY <= 275){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 235 && mouseY <= 238){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 239 && mouseY <= 243){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 244 && mouseY <= 248){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 249 && mouseY <= 253){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 254 && mouseY <= 258){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 259 && mouseY <= 263){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 264 && mouseY <= 268){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 269 && mouseY <= 273){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 274 && mouseY <= 275){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
         }
         if (mouseY >= 310 && mouseY <= 350){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 310 && mouseY <= 313){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 314 && mouseY <= 318){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 319 && mouseY <= 323){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 324 && mouseY <= 328){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 329 && mouseY <= 333){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 334 && mouseY <= 338){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 339 && mouseY <= 343){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 344 && mouseY <= 348){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 349 && mouseY <= 350){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 310 && mouseY <= 313){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 314 && mouseY <= 318){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 319 && mouseY <= 323){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 324 && mouseY <= 328){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 329 && mouseY <= 333){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 334 && mouseY <= 338){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 339 && mouseY <= 343){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 344 && mouseY <= 348){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 349 && mouseY <= 350){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 310 && mouseY <= 313){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 314 && mouseY <= 318){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 319 && mouseY <= 323){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 324 && mouseY <= 328){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 329 && mouseY <= 333){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 334 && mouseY <= 338){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 339 && mouseY <= 343){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 344 && mouseY <= 348){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 349 && mouseY <= 350){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 310 && mouseY <= 313){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 314 && mouseY <= 318){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 319 && mouseY <= 323){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 324 && mouseY <= 328){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 329 && mouseY <= 333){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 334 && mouseY <= 338){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 339 && mouseY <= 343){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 344 && mouseY <= 348){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 349 && mouseY <= 350){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
         }
         if (mouseY >= 385 && mouseY <= 425){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 385 && mouseY <= 388){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 389 && mouseY <= 393){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 394 && mouseY <= 398){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 399 && mouseY <= 403){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 404 && mouseY <= 408){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 409 && mouseY <= 413){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 414 && mouseY <= 418){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 419 && mouseY <= 423){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 424 && mouseY <= 425){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 385 && mouseY <= 388){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 389 && mouseY <= 393){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 394 && mouseY <= 398){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 399 && mouseY <= 403){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 404 && mouseY <= 408){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 409 && mouseY <= 413){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 414 && mouseY <= 418){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 419 && mouseY <= 423){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 424 && mouseY <= 425){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 385 && mouseY <= 388){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 389 && mouseY <= 393){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 394 && mouseY <= 398){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 399 && mouseY <= 403){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 404 && mouseY <= 408){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 409 && mouseY <= 413){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 414 && mouseY <= 418){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 419 && mouseY <= 423){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 424 && mouseY <= 425){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 385 && mouseY <= 388){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 389 && mouseY <= 393){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 394 && mouseY <= 398){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 399 && mouseY <= 403){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 404 && mouseY <= 408){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 409 && mouseY <= 413){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 414 && mouseY <= 418){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 419 && mouseY <= 423){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 424 && mouseY <= 425){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
         }
         if (mouseY >= 460 && mouseY <= 500){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 460 && mouseY <= 463){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 464 && mouseY <= 468){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 469 && mouseY <= 473){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 474 && mouseY <= 478){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 479 && mouseY <= 483){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 484 && mouseY <= 488){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 489 && mouseY <= 493){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 494 && mouseY <= 498){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 499 && mouseY <= 500){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 460 && mouseY <= 463){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 464 && mouseY <= 468){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 469 && mouseY <= 473){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 474 && mouseY <= 478){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 479 && mouseY <= 483){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 484 && mouseY <= 488){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 489 && mouseY <= 493){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 494 && mouseY <= 498){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 499 && mouseY <= 500){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 460 && mouseY <= 463){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 464 && mouseY <= 468){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 469 && mouseY <= 473){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 474 && mouseY <= 478){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 479 && mouseY <= 483){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 484 && mouseY <= 488){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 489 && mouseY <= 493){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 494 && mouseY <= 498){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 499 && mouseY <= 500){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 460 && mouseY <= 463){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 464 && mouseY <= 468){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 469 && mouseY <= 473){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 474 && mouseY <= 478){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 479 && mouseY <= 483){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 484 && mouseY <= 488){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 489 && mouseY <= 493){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 494 && mouseY <= 498){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 499 && mouseY <= 500){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
         }
         if (mouseY >= 535 && mouseY <= 575){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 535 && mouseY <= 538){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 539 && mouseY <= 543){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 544 && mouseY <= 548){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 549 && mouseY <= 553){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 554 && mouseY <= 558){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 559 && mouseY <= 563){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 564 && mouseY <= 568){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 569 && mouseY <= 573){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 574 && mouseY <= 575){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 535 && mouseY <= 538){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 539 && mouseY <= 543){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 544 && mouseY <= 548){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 549 && mouseY <= 553){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 554 && mouseY <= 558){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 559 && mouseY <= 563){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 564 && mouseY <= 568){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 569 && mouseY <= 573){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 574 && mouseY <= 575){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 535 && mouseY <= 538){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 539 && mouseY <= 543){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 544 && mouseY <= 548){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 549 && mouseY <= 553){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 554 && mouseY <= 558){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 559 && mouseY <= 563){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 564 && mouseY <= 568){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 569 && mouseY <= 573){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 574 && mouseY <= 575){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 535 && mouseY <= 538){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 539 && mouseY <= 543){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 544 && mouseY <= 548){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 549 && mouseY <= 553){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 554 && mouseY <= 558){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 559 && mouseY <= 563){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 564 && mouseY <= 568){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 569 && mouseY <= 573){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 574 && mouseY <= 575){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
         }
         if (mouseY >= 610 && mouseY <= 650){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 610 && mouseY <= 613){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 614 && mouseY <= 618){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 619 && mouseY <= 623){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 624 && mouseY <= 628){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 629 && mouseY <= 633){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 634 && mouseY <= 638){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 639 && mouseY <= 643){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 644 && mouseY <= 648){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 649 && mouseY <= 650){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 610 && mouseY <= 613){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 614 && mouseY <= 618){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 619 && mouseY <= 623){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 624 && mouseY <= 628){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 629 && mouseY <= 633){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 634 && mouseY <= 638){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 639 && mouseY <= 643){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 644 && mouseY <= 648){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 649 && mouseY <= 650){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 610 && mouseY <= 613){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 614 && mouseY <= 618){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 619 && mouseY <= 623){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 624 && mouseY <= 628){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 629 && mouseY <= 633){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 634 && mouseY <= 638){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 639 && mouseY <= 643){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 644 && mouseY <= 648){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 649 && mouseY <= 650){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 610 && mouseY <= 613){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 614 && mouseY <= 618){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 619 && mouseY <= 623){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 624 && mouseY <= 628){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 629 && mouseY <= 633){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 634 && mouseY <= 638){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 639 && mouseY <= 643){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 644 && mouseY <= 648){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 649 && mouseY <= 650){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }    
         }
         if (mouseY >= 685 && mouseY <= 725){
           if (mouseX > 150 && mouseX < 350){
             if (mouseY >= 685 && mouseY <= 688){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 689 && mouseY <= 693){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 694 && mouseY <= 698){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 699 && mouseY <= 703){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 705 && mouseY <= 708){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 709 && mouseY <= 713){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 714 && mouseY <= 718){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 719 && mouseY <= 723){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 724 && mouseY <= 725){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 350 && mouseX < 550){
             if (mouseY >= 685 && mouseY <= 688){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 689 && mouseY <= 693){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 694 && mouseY <= 698){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 699 && mouseY <= 703){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 705 && mouseY <= 708){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 709 && mouseY <= 713){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 714 && mouseY <= 718){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 719 && mouseY <= 723){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 724 && mouseY <= 725){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 550 && mouseX < 750){
             if (mouseY >= 685 && mouseY <= 688){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 689 && mouseY <= 693){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 694 && mouseY <= 698){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 699 && mouseY <= 703){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 705 && mouseY <= 708){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 709 && mouseY <= 713){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 714 && mouseY <= 718){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 719 && mouseY <= 723){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 724 && mouseY <= 725){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }
           if (mouseX > 750 && mouseX < 950){
             if (mouseY >= 685 && mouseY <= 688){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 689 && mouseY <= 693){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave + 1 , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 694 && mouseY <= 698){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "D" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 699 && mouseY <= 703){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "C" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 705 && mouseY <= 708){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "B" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 709 && mouseY <= 713){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "A" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 714 && mouseY <= 718){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "G" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 719 && mouseY <= 723){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "F" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
             if (mouseY >= 724 && mouseY <= 725){
               Notes.add(new Note (mouseX , mouseY - 15 , currentnote , load , currentoctave  , "E" , 25 , 25 , dotted.get() , flat.get() , sharp.get()));
             }
           }     
         }
       }
     }
   }  
}
