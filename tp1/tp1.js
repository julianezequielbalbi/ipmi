/*
  
           ¸¸.•*´¨`♫                       ♫´¨`*•.¸¸
      ¸¸.•*´¨`♫ ───────────────────────────────── ♫´¨`*•.¸¸
 ────═════════════════════════════════════════════════════════════════════────
 
    ♫          │             TP 1                 │    ♫
               │           COMISIÓN 5             │
    ♫          │      Balbi Julian Ezequiel       │ ♫
    ¸¸.•*      │         Legajo: 121113/1         │      *•.¸¸
 
 ────═════════════════════════════════════════════════════════════════════────
 ──═══─────════│ ♫ ──────────────────────────────── ♫  │════──────═══──
 
 
 
 
 
 
 
 
 
 */

/*

 LINK DE YOUTUBE : "  "
 
 
 
 */

/*
INSTRUCCIONES DE USO:
 
 Hacer click para cambiar a cuadrícula blanca. Un click y cambia pantalla imitando la obra de arte de Vasarely. Click y vuelve a limpiar todo.
 Si haces click desde el sector izquierdo queda fijo. Si moves en el sector derecho se cambiand colores afectando a la visual. Generando el Arte Óptico. Vasarely nos acompaña a entender su mundo descubriendo combinaciones y alteraciones de la visual.
 
/*
 
 */

let cantidad, lado, circleX, xspeed = 2, going = false, fondoVasarely1, victorvasarely;

function preload() {
  victorvasarely = loadImage("./data/victorvasarely.jpg");
  fondoVasarely1 = loadImage('data/fondoVasarely1.png');
}

function setup() {
  createCanvas(800, 400);
  cantidad = 40;
  lado = width/cantidad;
}


function draw() {

  background(166, 166, 166);

  let d = dist (width/2, height/2, mouseX, mouseY);
  ellipse(width, height/24, d*2, d*2);

  image(victorvasarely, 0, 0, width/2.1, height);
  fill(166, 166, 166);

  ellipse(circleX, height, 17, 17);
  ellipse(circleX, height/3, 17, 17);
  ellipse(circleX, height/5, 17, 17);
  ellipse(circleX, height/7, 17, 17);

  ellipse(circleX, height/9, 17, 17);
  ellipse(circleX, height/11, 17, 17);

  for (let x = 19; x <= cantidad; x++) {
    for (let y = 0; y <= cantidad; y++) {

      if (going  ) {
        if (x % 2 ==  0 && y  % 2 == 0) {

          fill(222, 106, 38);


          if (y * lado < mouseY+1) {
            fill(30, 38, 185);
          }


          // celeste

          if (x * lado > mouseX) {
            fill(138, 206, 223);
          }



          //

          // MOSTAZA

          ellipse (x*lado+10, y* lado+10, lado, lado);
          fill(48, 200, 18);


          //

          ellipse (x*lado-10, y* lado+10, lado, lado-10);
          fill(249, 193, 80);

          //
          ellipse (x*lado-10, y* lado-10, lado-8, lado);
          fill(236, 236, 22);

          // AMARILLA -roja
          ellipse (x*lado+10, y* lado-10, lado, lado-8);
          fill(31, 255, 69);
        }
      } else {


        rect(x * lado, y * lado, lado, lado+1);
        fill(2, 0, 0);

        rect(x * lado, y * lado, lado, lado+1);
        fill(255, 255, 255);

        rect(x * lado, y * lado, lado, lado+1);
        fill(118, 118, 118);
      }
      if (x % 2 != 0 && y  % 2 == 0) {
        fill(118, 118, 118);
      }
    }
  }
  if (going  ) {
    circleX = circleX +xspeed;
  }

  if (circleX > 800 ) {
    xspeed = -18;
  }
  if (circleX < width/2) {
    xspeed = 40;
  }

  image(fondoVasarely1, mouseX-300, mouseY-200, width/1.4, height/1.2);
}


function mousePressed() {
  if (going) {
    going = false;
  } else {
    going=true;
  }
}
