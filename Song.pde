public class Song{
   ArrayList<Note> Notes = new ArrayList<Note>(); int bpm;
   int layers; int start; int end;
   Song(){
     layers = 7; start = 0; end = 7;bpm = 100;
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
   void check (){
     PImage load = loadImage(currentnote + "note.png");
     if (mouseX >= 150 && mouseX <= 950 && mouseY >= 235 && mouseY <= 725){
       if (mouseY >= 235 && mouseY <= 275){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 235 && mouseY <= 238){
             Notes.add(new Note (mouseX , mouseY , currentnote , load , currentoctave , )
           }
           if (mouseY >= 239 && mouseY <= 243){
           }
           if (mouseY >= 244 && mouseY <= 248){
           }
           if (mouseY >= 249 && mouseY <= 253){
           }
           if (mouseY >= 254 && mouseY <= 258){
           }
           if (mouseY >= 259 && mouseY <= 263){
           }
           if (mouseY >= 264 && mouseY <= 268){
           }
           if (mouseY >= 269 && mouseY <= 273){
           }
           if (mouseY >= 274 && mouseY <= 275){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 235 && mouseY <= 238){
           }
           if (mouseY >= 239 && mouseY <= 243){
           }
           if (mouseY >= 244 && mouseY <= 248){
           }
           if (mouseY >= 249 && mouseY <= 253){
           }
           if (mouseY >= 254 && mouseY <= 258){
           }
           if (mouseY >= 259 && mouseY <= 263){
           }
           if (mouseY >= 264 && mouseY <= 268){
           }
           if (mouseY >= 269 && mouseY <= 273){
           }
           if (mouseY >= 274 && mouseY <= 275){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 235 && mouseY <= 238){
           }
           if (mouseY >= 239 && mouseY <= 243){
           }
           if (mouseY >= 244 && mouseY <= 248){
           }
           if (mouseY >= 249 && mouseY <= 253){
           }
           if (mouseY >= 254 && mouseY <= 258){
           }
           if (mouseY >= 259 && mouseY <= 263){
           }
           if (mouseY >= 264 && mouseY <= 268){
           }
           if (mouseY >= 269 && mouseY <= 273){
           }
           if (mouseY >= 274 && mouseY <= 275){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 235 && mouseY <= 238){
           }
           if (mouseY >= 239 && mouseY <= 243){
           }
           if (mouseY >= 244 && mouseY <= 248){
           }
           if (mouseY >= 249 && mouseY <= 253){
           }
           if (mouseY >= 254 && mouseY <= 258){
           }
           if (mouseY >= 259 && mouseY <= 263){
           }
           if (mouseY >= 264 && mouseY <= 268){
           }
           if (mouseY >= 269 && mouseY <= 273){
           }
           if (mouseY >= 274 && mouseY <= 275){
           }
         }
       }
       if (mouseY >= 310 && mouseY <= 350){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 310 && mouseY <= 313){
           }
           if (mouseY >= 314 && mouseY <= 318){
           }
           if (mouseY >= 319 && mouseY <= 323){
           }
           if (mouseY >= 324 && mouseY <= 328){
           }
           if (mouseY >= 329 && mouseY <= 333){
           }
           if (mouseY >= 334 && mouseY <= 338){
           }
           if (mouseY >= 339 && mouseY <= 343){
           }
           if (mouseY >= 344 && mouseY <= 348){
           }
           if (mouseY >= 349 && mouseY <= 350){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 310 && mouseY <= 313){
           }
           if (mouseY >= 314 && mouseY <= 318){
           }
           if (mouseY >= 319 && mouseY <= 323){
           }
           if (mouseY >= 324 && mouseY <= 328){
           }
           if (mouseY >= 329 && mouseY <= 333){
           }
           if (mouseY >= 334 && mouseY <= 338){
           }
           if (mouseY >= 339 && mouseY <= 343){
           }
           if (mouseY >= 344 && mouseY <= 348){
           }
           if (mouseY >= 349 && mouseY <= 350){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 310 && mouseY <= 313){
           }
           if (mouseY >= 314 && mouseY <= 318){
           }
           if (mouseY >= 319 && mouseY <= 323){
           }
           if (mouseY >= 324 && mouseY <= 328){
           }
           if (mouseY >= 329 && mouseY <= 333){
           }
           if (mouseY >= 334 && mouseY <= 338){
           }
           if (mouseY >= 339 && mouseY <= 343){
           }
           if (mouseY >= 344 && mouseY <= 348){
           }
           if (mouseY >= 349 && mouseY <= 350){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 310 && mouseY <= 313){
           }
           if (mouseY >= 314 && mouseY <= 318){
           }
           if (mouseY >= 319 && mouseY <= 323){
           }
           if (mouseY >= 324 && mouseY <= 328){
           }
           if (mouseY >= 329 && mouseY <= 333){
           }
           if (mouseY >= 334 && mouseY <= 338){
           }
           if (mouseY >= 339 && mouseY <= 343){
           }
           if (mouseY >= 344 && mouseY <= 348){
           }
           if (mouseY >= 349 && mouseY <= 350){
           }
         }
       }
       if (mouseY >= 385 && mouseY <= 425){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 385 && mouseY <= 388){
           }
           if (mouseY >= 389 && mouseY <= 393){
           }
           if (mouseY >= 394 && mouseY <= 398){
           }
           if (mouseY >= 399 && mouseY <= 403){
           }
           if (mouseY >= 404 && mouseY <= 408){
           }
           if (mouseY >= 409 && mouseY <= 413){
           }
           if (mouseY >= 414 && mouseY <= 418){
           }
           if (mouseY >= 419 && mouseY <= 423){
           }
           if (mouseY >= 424 && mouseY <= 425){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 385 && mouseY <= 388){
           }
           if (mouseY >= 389 && mouseY <= 393){
           }
           if (mouseY >= 394 && mouseY <= 398){
           }
           if (mouseY >= 399 && mouseY <= 403){
           }
           if (mouseY >= 404 && mouseY <= 408){
           }
           if (mouseY >= 409 && mouseY <= 413){
           }
           if (mouseY >= 414 && mouseY <= 418){
           }
           if (mouseY >= 419 && mouseY <= 423){
           }
           if (mouseY >= 424 && mouseY <= 425){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 385 && mouseY <= 388){
           }
           if (mouseY >= 389 && mouseY <= 393){
           }
           if (mouseY >= 394 && mouseY <= 398){
           }
           if (mouseY >= 399 && mouseY <= 403){
           }
           if (mouseY >= 404 && mouseY <= 408){
           }
           if (mouseY >= 409 && mouseY <= 413){
           }
           if (mouseY >= 414 && mouseY <= 418){
           }
           if (mouseY >= 419 && mouseY <= 423){
           }
           if (mouseY >= 424 && mouseY <= 425){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 385 && mouseY <= 388){
           }
           if (mouseY >= 389 && mouseY <= 393){
           }
           if (mouseY >= 394 && mouseY <= 398){
           }
           if (mouseY >= 399 && mouseY <= 403){
           }
           if (mouseY >= 404 && mouseY <= 408){
           }
           if (mouseY >= 409 && mouseY <= 413){
           }
           if (mouseY >= 414 && mouseY <= 418){
           }
           if (mouseY >= 419 && mouseY <= 423){
           }
           if (mouseY >= 424 && mouseY <= 425){
           }
         }
       }
       if (mouseY >= 460 && mouseY <= 500){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 460 && mouseY <= 463){
           }
           if (mouseY >= 464 && mouseY <= 468){
           }
           if (mouseY >= 469 && mouseY <= 473){
           }
           if (mouseY >= 474 && mouseY <= 478){
           }
           if (mouseY >= 479 && mouseY <= 483){
           }
           if (mouseY >= 484 && mouseY <= 488){
           }
           if (mouseY >= 489 && mouseY <= 493){
           }
           if (mouseY >= 494 && mouseY <= 498){
           }
           if (mouseY >= 499 && mouseY <= 500){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 460 && mouseY <= 463){
           }
           if (mouseY >= 464 && mouseY <= 468){
           }
           if (mouseY >= 469 && mouseY <= 473){
           }
           if (mouseY >= 474 && mouseY <= 478){
           }
           if (mouseY >= 479 && mouseY <= 483){
           }
           if (mouseY >= 484 && mouseY <= 488){
           }
           if (mouseY >= 489 && mouseY <= 493){
           }
           if (mouseY >= 494 && mouseY <= 498){
           }
           if (mouseY >= 499 && mouseY <= 500){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 460 && mouseY <= 463){
           }
           if (mouseY >= 464 && mouseY <= 468){
           }
           if (mouseY >= 469 && mouseY <= 473){
           }
           if (mouseY >= 474 && mouseY <= 478){
           }
           if (mouseY >= 479 && mouseY <= 483){
           }
           if (mouseY >= 484 && mouseY <= 488){
           }
           if (mouseY >= 489 && mouseY <= 493){
           }
           if (mouseY >= 494 && mouseY <= 498){
           }
           if (mouseY >= 499 && mouseY <= 500){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 460 && mouseY <= 463){
           }
           if (mouseY >= 464 && mouseY <= 468){
           }
           if (mouseY >= 469 && mouseY <= 473){
           }
           if (mouseY >= 474 && mouseY <= 478){
           }
           if (mouseY >= 479 && mouseY <= 483){
           }
           if (mouseY >= 484 && mouseY <= 488){
           }
           if (mouseY >= 489 && mouseY <= 493){
           }
           if (mouseY >= 494 && mouseY <= 498){
           }
           if (mouseY >= 499 && mouseY <= 500){
           }
         }
       }
       if (mouseY >= 535 && mouseY <= 575){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 535 && mouseY <= 538){
           }
           if (mouseY >= 539 && mouseY <= 543){
           }
           if (mouseY >= 544 && mouseY <= 548){
           }
           if (mouseY >= 549 && mouseY <= 553){
           }
           if (mouseY >= 554 && mouseY <= 558){
           }
           if (mouseY >= 559 && mouseY <= 563){
           }
           if (mouseY >= 564 && mouseY <= 568){
           }
           if (mouseY >= 569 && mouseY <= 573){
           }
           if (mouseY >= 574 && mouseY <= 575){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 535 && mouseY <= 538){
           }
           if (mouseY >= 539 && mouseY <= 543){
           }
           if (mouseY >= 544 && mouseY <= 548){
           }
           if (mouseY >= 549 && mouseY <= 553){
           }
           if (mouseY >= 554 && mouseY <= 558){
           }
           if (mouseY >= 559 && mouseY <= 563){
           }
           if (mouseY >= 564 && mouseY <= 568){
           }
           if (mouseY >= 569 && mouseY <= 573){
           }
           if (mouseY >= 574 && mouseY <= 575){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 535 && mouseY <= 538){
           }
           if (mouseY >= 539 && mouseY <= 543){
           }
           if (mouseY >= 544 && mouseY <= 548){
           }
           if (mouseY >= 549 && mouseY <= 553){
           }
           if (mouseY >= 554 && mouseY <= 558){
           }
           if (mouseY >= 559 && mouseY <= 563){
           }
           if (mouseY >= 564 && mouseY <= 568){
           }
           if (mouseY >= 569 && mouseY <= 573){
           }
           if (mouseY >= 574 && mouseY <= 575){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 535 && mouseY <= 538){
           }
           if (mouseY >= 539 && mouseY <= 543){
           }
           if (mouseY >= 544 && mouseY <= 548){
           }
           if (mouseY >= 549 && mouseY <= 553){
           }
           if (mouseY >= 554 && mouseY <= 558){
           }
           if (mouseY >= 559 && mouseY <= 563){
           }
           if (mouseY >= 564 && mouseY <= 568){
           }
           if (mouseY >= 569 && mouseY <= 573){
           }
           if (mouseY >= 574 && mouseY <= 575){
           }
         }
       }
       if (mouseY >= 610 && mouseY <= 650){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 610 && mouseY <= 613){
           }
           if (mouseY >= 614 && mouseY <= 618){
           }
           if (mouseY >= 619 && mouseY <= 623){
           }
           if (mouseY >= 624 && mouseY <= 628){
           }
           if (mouseY >= 629 && mouseY <= 633){
           }
           if (mouseY >= 634 && mouseY <= 638){
           }
           if (mouseY >= 639 && mouseY <= 643){
           }
           if (mouseY >= 644 && mouseY <= 648){
           }
           if (mouseY >= 649 && mouseY <= 650){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 610 && mouseY <= 613){
           }
           if (mouseY >= 614 && mouseY <= 618){
           }
           if (mouseY >= 619 && mouseY <= 623){
           }
           if (mouseY >= 624 && mouseY <= 628){
           }
           if (mouseY >= 629 && mouseY <= 633){
           }
           if (mouseY >= 634 && mouseY <= 638){
           }
           if (mouseY >= 639 && mouseY <= 643){
           }
           if (mouseY >= 644 && mouseY <= 648){
           }
           if (mouseY >= 649 && mouseY <= 650){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 610 && mouseY <= 613){
           }
           if (mouseY >= 614 && mouseY <= 618){
           }
           if (mouseY >= 619 && mouseY <= 623){
           }
           if (mouseY >= 624 && mouseY <= 628){
           }
           if (mouseY >= 629 && mouseY <= 633){
           }
           if (mouseY >= 634 && mouseY <= 638){
           }
           if (mouseY >= 639 && mouseY <= 643){
           }
           if (mouseY >= 644 && mouseY <= 648){
           }
           if (mouseY >= 649 && mouseY <= 650){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 610 && mouseY <= 613){
           }
           if (mouseY >= 614 && mouseY <= 618){
           }
           if (mouseY >= 619 && mouseY <= 623){
           }
           if (mouseY >= 624 && mouseY <= 628){
           }
           if (mouseY >= 629 && mouseY <= 633){
           }
           if (mouseY >= 634 && mouseY <= 638){
           }
           if (mouseY >= 639 && mouseY <= 643){
           }
           if (mouseY >= 644 && mouseY <= 648){
           }
           if (mouseY >= 649 && mouseY <= 650){
           }
         }    
       }
       if (mouseY >= 685 && mouseY <= 725){
         if (mouseX > 150 && mouseX < 350){
           if (mouseY >= 685 && mouseY <= 688){
           }
           if (mouseY >= 689 && mouseY <= 693){
           }
           if (mouseY >= 694 && mouseY <= 698){
           }
           if (mouseY >= 699 && mouseY <= 703){
           }
           if (mouseY >= 705 && mouseY <= 708){
           }
           if (mouseY >= 709 && mouseY <= 713){
           }
           if (mouseY >= 714 && mouseY <= 718){
           }
           if (mouseY >= 719 && mouseY <= 723){
           }
           if (mouseY >= 724 && mouseY <= 725){
           }
         }
         if (mouseX > 350 && mouseX < 550){
           if (mouseY >= 685 && mouseY <= 688){
           }
           if (mouseY >= 689 && mouseY <= 693){
           }
           if (mouseY >= 694 && mouseY <= 698){
           }
           if (mouseY >= 699 && mouseY <= 703){
           }
           if (mouseY >= 705 && mouseY <= 708){
           }
           if (mouseY >= 709 && mouseY <= 713){
           }
           if (mouseY >= 714 && mouseY <= 718){
           }
           if (mouseY >= 719 && mouseY <= 723){
           }
           if (mouseY >= 724 && mouseY <= 725){
           }
         }
         if (mouseX > 550 && mouseX < 750){
           if (mouseY >= 685 && mouseY <= 688){
           }
           if (mouseY >= 689 && mouseY <= 693){
           }
           if (mouseY >= 694 && mouseY <= 698){
           }
           if (mouseY >= 699 && mouseY <= 703){
           }
           if (mouseY >= 705 && mouseY <= 708){
           }
           if (mouseY >= 709 && mouseY <= 713){
           }
           if (mouseY >= 714 && mouseY <= 718){
           }
           if (mouseY >= 719 && mouseY <= 723){
           }
           if (mouseY >= 724 && mouseY <= 725){
           }
         }
         if (mouseX > 750 && mouseX < 950){
           if (mouseY >= 685 && mouseY <= 688){
           }
           if (mouseY >= 689 && mouseY <= 693){
           }
           if (mouseY >= 694 && mouseY <= 698){
           }
           if (mouseY >= 699 && mouseY <= 703){
           }
           if (mouseY >= 705 && mouseY <= 708){
           }
           if (mouseY >= 709 && mouseY <= 713){
           }
           if (mouseY >= 714 && mouseY <= 718){
           }
           if (mouseY >= 719 && mouseY <= 723){
           }
           if (mouseY >= 724 && mouseY <= 725){
           }
         }     
       }
     }
   }  
}
