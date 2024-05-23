/*



                      ¸¸.•*´¨`♫               ♫´¨`*•.¸¸
           ¸¸.•*´¨`♫ ───────────────────────────────── ♫´¨`*•.¸¸
────═════════════════════════════════════════════════════════════════════────
                   
              ♫     │               TP 2               │    ♫
                    │            COMISIÓN 5            │
                  ♫ │      Balbi Julian Ezequiel       │ ♫
         ¸¸.•*      │         Legajo: 121113/1         │      *•.¸¸
  
────═════════════════════════════════════════════════════════════════════────
    ──═══─────════│ ♫ ──────────────────────────────── ♫  │════──────═══──
 
                     
*/

PImage fondo, logo, Simsala_Grimm_logo, yoyo, yoyo1, croc, croc1, crocyoyo, imagen1, imagen2, imagen3;
PFont fuente;
int pantalla, tiempo;
int posX1, posY1, posY2, posX2, posX3;
int alpha;
boolean ultimaPantalla, iniciado;

void setup() {
  size(640, 480);
  fondo = loadImage("fondo.png");
  fuente = createFont("SAND-SLACK.ttf", 48);
  textFont(fuente);
  textSize(24);
  textAlign(LEFT, TOP);

  pantalla = 0;
  tiempo = frameCount;
  posX1 = 0;
  posY1 = 0;
  posY2 = 0;
  posX2 = 0;
  posX3 = 0;
  alpha = 0;
  iniciado = false;

  logo = loadImage("logo.png");
  Simsala_Grimm_logo = loadImage("Simsala_Grimm_logo.png");
  yoyo = loadImage("yoyo.png");
  yoyo1 = loadImage("yoyo1.png");
  croc = loadImage("croc.png");
  croc1 = loadImage("croc1.png");
  crocyoyo = loadImage("crocyoyo.png");


  imagen1 = loadImage("imagen1.jpeg");
  imagen2 = loadImage("imagen2.png");
  imagen3 = loadImage("imagen3.png");
}

void draw() {
  
   //   println("X:");
   //   println(mouseX);
   //   println("Y:");
   //   println(mouseY);
  
  println(tiempo/60);
  background(255, 255, 255);

  if (pantalla == 0) {
    tiempo = 0;
    if (mouseY <= 255) {
      tint(mouseY);
    }
    image(fondo, 0, 0, width, height);

    push();
    rect(0, height/2, width, height/3);
    fill(132, 52, 52, alpha);
    text("SIMSALAGRIMM es un conjuro magico que abre \nla puerta a la tierra encantada de Simsala, \ndonde todos los personajes de cuentos \nviven en realidad", 0, height/2 + 10);
    alpha++;
    image(Simsala_Grimm_logo, mouseX, mouseY, width/4, height/5);
    pop();

    push();
    fill(164,40,40);
    rect(320, 440, 130, 80);
    noStroke();
    fill(240,171,92);
    text("COMENZAR", 320, 440);
    pop();
    
  } else if (pantalla == 1) {
    if (mouseY <= 255) {
      tint(mouseY);
    }
    image(imagen1, 0, 0, width, height);
    push();
    fill(132,52,22, alpha);
    text("Sus personajes principales son ", 29, 32);
    fill(132,52,22, alpha);
    text("Yoyo y Doctor Croc ademas de todos \nlos personajes de los cuentos de Hadas \nde los Hermanos Grimm como Hanzel y Gretel \nCaperucita roja \nRapunzel \n etc ", 25, 72);
    alpha++;
    pop();
    image(yoyo, mouseX, mouseY, width/9, height/4);
  } else if (pantalla == 2) {
    if (mouseX <= 255) {
      tint(mouseX);
    }
    push();
    image(imagen2, 0, 0, width, height);
    fill(132,52,22, alpha);
    text("Los personajes entran en los cuentos para \n ayudar a los personajes en las historias", posX1/4, posY1+17);
    alpha++;
    posX1++;
    pop();
    image(croc, mouseX, mouseY, width/9, height/4);
  } else if (pantalla == 3) {
    if (mouseX <= 255) {
      tint(mouseX);
    }
    image(imagen3, 0, 0, width, height);
    push();
    fill(0, alpha);
    text("Se publicaron cincuenta y dos episodios... \n se pueden esuchar en diferentes \n idiomas para practicar nuevos idiomas", posX1/4, posY1+17);
    posX1++;
    alpha++;
    pop();
    image(Simsala_Grimm_logo, mouseX, mouseY, width/4, height/4);
  } else if (pantalla == 4) {
    if (mouseY <= 255) {
      tint(mouseY);
    }
    ultimaPantalla = true;
    image(fondo, 0, 0, width, height);
    push();
    tiempo = 0;
    fill(222, 108, 12);
    text("Simsala Simsala Simsala Grimmmmmmmm", posX1/4, posY1 + 18);
    posX1++;
    pop();
    push();
    fill(164,40,40);
    rect(320, 440, 130, 80);
    noStroke();
    fill(240,171,92);
    text("REINICIAR", 320, 440);
    pop();
    image(Simsala_Grimm_logo, mouseX, mouseY, width/4, height/4);
  }

  if (iniciado) {
    tiempo++;
    if (tiempo/60 >= 5) {
      pantalla++;
      if (pantalla > 4) {
        pantalla = 0;
        iniciado = false;
      }
      tiempo = 0;
      alpha = 0;
    }
  }
}

void mouseClicked() {
  if (pantalla == 0) {
    if (mouseX > 320 && mouseX < 450 && mouseY > 440 && mouseY < 520) {
      pantalla++;
      iniciado = true;
    }
  } else if (pantalla == 4) {
    if (mouseX > 320 && mouseX < 450 && mouseY > 440 && mouseY < 520) {
      pantalla = 0;
      posX1 = 0;
      alpha = 0;
      posY2 = 0;
      posX2 = 0;
      posX3 = 0;
      iniciado = false;
    }
  }
}


/*  

<────────────────────────────────────────────────────────>
<── ( ___ )────────────────────────────────────( ___ ) ──>
<──  │   │                                      │   │  ──>
<──  │   │    ──────────────────────────────    │   │  ──>
<──  │   │  ╔═╗┬┌┬┐┌─┐┌─┐┬  ┌─┐  ╔═╗┬─┐┬┌┬┐┌┬┐  │   │  ──>
<──  │   │  ╚═╗││││└─┐├─┤│  ├─┤  ║ ╦├┬┘│││││││  │   │  ──>
<──  │   │  ╚═╝┴┴ ┴└─┘┴ ┴┴─┘┴ ┴  ╚═╝┴└─┴┴ ┴┴ ┴  │   │  ──>
<──  │   │    ──────────────────────────────    │   │  ──>
<──  │___│                                      │___│  ──>
<── (_____)────────────────────────────────────(_____) ──>
<────────────────────────────────────────────────────────>

*/
