//TP1
//Julian Ezequiel Balbi
//COMISIÓN 5

//VARIABLES

int miVariable = 1000;
PImage durazno ;

void setup(){
  size(800,400);
  fill(255,255,255);
  durazno = loadImage("durazno.jpg");
}

void draw(){
   println("X:");
   println(mouseX);
   println("Y:");
   println(mouseY);
   background(255,255,255);

//   println("X:");
  // println(mouseX);
   // println("Y:");
   // println(mouseY);
  
  
  //fruta : durazno
   
  image(durazno,440,120,180,180);
  
 //pericarpio
 
 //epicarpio (piel o cáscara de la fruta)
  
  stroke(0,0,0); 
  fill (183,115,127);

  beginShape();
  curveVertex(242,274);
  curveVertex(264,261);
  curveVertex(212,290);
  curveVertex(176,292);
  curveVertex(147,284);
  curveVertex(127,262);
  curveVertex(116,235);
  curveVertex(116,205);
  curveVertex(134,155);
  curveVertex(156,135);
  curveVertex(186,149);
  curveVertex(183,219);
  endShape(CLOSE);
 
 
  //mescocarpio
  
  fill(252,223,130); 
    stroke (0,0,0); 

  beginShape();
  curveVertex(204,133);
  curveVertex(218,123);
  curveVertex(236,125);
  curveVertex(256,133);
  curveVertex(290,185);
  curveVertex(290,229);
  curveVertex(274,261);
  curveVertex(245,277);
  curveVertex(179,267);
  curveVertex(143,227);
  curveVertex(140,196);
  curveVertex(149,155);
  curveVertex(166,137);
  curveVertex(193,135);
  curveVertex(196,136);
  endShape(CLOSE);
  
  //endocarpio
  
  fill(101,83,22); 
  stroke (0,0,0); 
  beginShape();  
  curveVertex(206,159);
  curveVertex(217,161);
  curveVertex(237,174);
  curveVertex(250,193);
  curveVertex(247,204);
  curveVertex(239,229);
  curveVertex(215,220);
  curveVertex(209,208);
  curveVertex(202,196);
  curveVertex(203,177);
  curveVertex(205,165);
  curveVertex(205,163);
  curveVertex(208,159);
  endShape(CLOSE);
  
   //pericarpio interior
  
  fill(242,236,218); 
  stroke (0,0,0); 
  beginShape();  
  curveVertex(210,169);
  curveVertex(225,175);
  curveVertex(239,186);
  curveVertex(240,196);
  curveVertex(242,206);
  curveVertex(236,220);
  curveVertex(222,215);
  curveVertex(209,195);
  curveVertex(209,182);
  curveVertex(210,162);
  curveVertex(210,172);
  endShape(CLOSE);

//semilla
  
  fill(218,179,52); 
  stroke (0,0,0); 
  beginShape();  
  curveVertex(216,177);
  curveVertex(224,185);
  curveVertex(237,200);
  curveVertex(235,209);
  curveVertex(221,205);
  curveVertex(212,194);
  curveVertex(216,177);
  curveVertex(214,180);
  endShape(CLOSE);
    
}
