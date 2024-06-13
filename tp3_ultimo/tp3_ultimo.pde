/*


                      ¸¸.•*´¨`♫               ♫´¨`*•.¸¸
           ¸¸.•*´¨`♫ ───────────────────────────────── ♫´¨`*•.¸¸
────═════════════════════════════════════════════════════════════════════────
                   
              ♫     │               TP 3               │    ♫
                    │            COMISIÓN 5            │
                  ♫ │      Balbi Julian Ezequiel       │ ♫
         ¸¸.•*      │         Legajo: 121113/1         │      *•.¸¸
  
────═════════════════════════════════════════════════════════════════════────
    ──═══─────════│ ♫ ──────────────────────────────── ♫  │════──────═══──
                   
                  
                                              
*/


int cantidad;
float lado;

PImage victorvasarely;


void setup() {
 
  size(800, 400);
    victorvasarely = loadImage("victorvasarely.jpg");
  cantidad = 40;
  lado = width/cantidad;
  
}


void draw() {

  
   
       
  /*                                              

  println("X:");
   println(mouseX);
   println("Y:");
   println(mouseY);
   
   */
                  background(255,255,255);

  for (int x = 0; x < cantidad; x++) {
    for (int y = 0; y < cantidad; y++) {
      if (x % 2 == 0 && y  % 2 != 0) {
        fill(222,106,38);
        push();

    image(victorvasarely,0,0,400,400);

pop();
        
      
      if (y * lado < mouseY+1) {
        fill(30,38,185);
      }
      
      

// celeste
      
      if (x * lado < mouseX+1) {
        fill(138,206,223); 
      }
    


//      

// MOSTAZA

ellipse (x*lado+10, y* lado+10,lado,lado);
               fill(48,200,18);
        
        //       
   
   ellipse (x*lado-10, y* lado+10,lado,lado-10);
               fill(249,193,80);
                      
//   VERDE -vipleta
     ellipse (x*lado-10, y* lado-10,lado-8,lado);
               fill(236,236,22); 

// AMARILLA -roja
          ellipse (x*lado+10, y* lado-10,lado,lado-8);
               fill(222,38,38);
               
                  
      } else {
            

        rect(x * lado, y * lado, lado, lado+1);
        fill(2,0,0);

              rect(x * lado, y * lado, lado, lado+1);
              fill(255,255,255);

         rect(x * lado, y * lado, lado, lado+1);
         fill(118,118,118);
      }
      if (x % 2 != 0 && y  % 2 == 0) {
         fill(118,118,118);
      }
     
    
    }
  }
}
