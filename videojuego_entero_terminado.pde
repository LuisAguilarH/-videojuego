personaje P1;
personaje P2;
personaje P3;
personaje P4;
personaje P5;

personaje J1;
personaje J2;

int pantalla;
boolean j1,j2;
int turno = 1;
int display, display2;
int i;
int j;

void setup(){
  size(700,700);
  P1 = new personaje(50,500);
  P2 = new personaje(40,500);
  P3 = new personaje(60,500);
  P4 = new personaje(45,500);
  P5 = new personaje(55,500);
  J1 = new personaje();
  J2 = new personaje();
}

void draw(){
  switch(pantalla){
    case 0:
    pushMatrix();
    background(random(10));
    noStroke();
    fill(random(255));
    ellipse(random(600), random(600), random(60), random(60));
    fill(255);
    text("Terror Figth", 70,350);
    textSize(25);
    text("\n\n\n\n\nPresiona ENTER para continuar", 170,350);
    textSize(100);
    fill(255);
    if(key == ENTER){
      pantalla = 1;
    }
    popMatrix();
    break;
/////////////////
    case 1:
    pushMatrix();
    background(0);
    textSize(32);
    fill(255);
    text("     Presiona la tecla indicada\n  para seleccionar un personaje\n\n\n         Para pelear presiona\n\n       V si eres el jugador uno\n                         Y\n       L si eres el jugador dos\n\n\n     Presiona TAB para continuar",100,100);
    if(key == TAB){
      pantalla = 2;
    }
    popMatrix();
    break;
////////////////
    case 2:
    pushMatrix();
    background(0);
    textSize(30);
    fill(255,0,0);
    text("Personajes",280,100);
    textSize(25);
    fill(255);
    text("Jugador 1",300,150);
    fill(255,0,0);
    text("Jugador 2",300,200);
    textSize(20);
    fill(255);
    text("   Jasson:            hannibal:       mike mayers:\nPresiona a        Presiona s        Presiona d\n\n\n     pennywise:       Mowgle:\n     Presiona f         Presiona g",100, 400);
    fill(255,0,0);
    text("\n\nPresiona q        Presiona w       Presiona e\n\n\n\n     Presiona r         Presiona t",100, 400);
    
    if(keyPressed){
      switch(key){
        case 'a':
        j1 = true;
        display = 0;
        break;
        
        case 's':
        j1 = true;
        display = 1;
        break;
        
        case 'd':
        j1 = true;
        display = 2;
        break;
        
        case 'f':
        j1 = true;
        display = 3;
        break;
        
        case 'g':
        j1 = true;
        display = 4;
        break;
      
        case 'q':
        j2 = true;
        display2 = 0;
        break;
        
        case 'w':
        j2 = true;
        display = 1;
        break;
        
        case 'e':
        j2 = true;
        display2 = 2;
        break;
        
        case 'r':
        j2 = true;
        display2 = 3;
        break;
        
        case 't':
        j2 = true;
        display2 = 4;
        break;
         
       
      }
      
    }
    
    if(j1 && j2){
      pantalla = 3;
    }
    popMatrix();
    break;
/////////////////
    case 3:
    pushMatrix();
    int foo;
foo = 34;
println(foo);
foo = 56;
println(foo);
char bar;
bar = 'e';
println(bar);
background(0);
for(int i = 0; i<1000; i++){
  float x = random(700);
  float y = random(700);
  float w = random(50);
  float h = random(50);
  float c = random(255);
  fill(random(150),0,0);
  stroke(c,c,c);
  strokeWeight(random(.5));
  noStroke();
  ellipse(x,y,w,h);
  noStroke();
  rect(x,y,w,h);
  fill(40,0,0);
  rect(0,600,700,100);
  
  
}
    textSize(40);
    fill(255,0,0);
    text(J1.vida,50,50);
    text(J2.vida,550,50);
    if(turno == 1){
      textSize(40);
      fill (255);
      text("Jugador 1: Pelea!",50,100);
    }
    if(turno == 2){
      textSize(40);
      fill (255);
      text("Jugador 2: Pelea!",350,100);
    }
   
    
    switch(display){
      case 0:
      J1.PD1(100,350);
      J1 = P1;
      break;
      
      case 1:
      J1.PD2(100,350);
      J1 = P2;
      break;
      
      case 2:
      J1.PD3(100,350);
      J1 = P3;
      break;
      
      case 3:
      J1.PD4(100,350);
      J1 = P4;
      break;
      
      case 4:
      J1.PD5(100,350);
      J1 = P5;
      break;
    }
    switch(display2){
      case 0:
      J2.PD1(400,0);
      J2 = P1;
      break;
      
      case 1:
      J2.PD2(400,0);
      J2 = P2;
      break;
      
      case 2:
      J2.PD3(400,0);
      J2 = P3;
      break;
      
      case 3:
      J2.PD4(400,0);
      J2 = P4;
      break;
      
      case 4:
      J2.PD5(400,0);
      J2 = P5;
      break;
    }
    
    if(turno == 1){
      if(keyPressed){
        if(key == 'v' || key == 'V'){
          J2.vida = J2.vida - J1.ataque;
          turno = 2;
         
        }
      }
    }
    
    if(turno == 2){
      if(keyPressed){
        if(key == 'l' || key == 'L'){
          J1.vida = J1.vida - J2.ataque;
          turno = 1;
        }
      }
    }
    
    if(J1.vida <= 0 || J2.vida <= 0){
      pantalla = 4;
    }
    popMatrix();
    break;
///////////////
 case 4:
 pushMatrix();
 background(0);
 textSize(40);
 fill(255);
 if(J1.vida>J2.vida){
 text("Jugador 1 GANA",200,100);
    }
    if(J2.vida>J1.vida){
      text("Jugador 2 GANA",200,100);
    }
 textSize(25);
 text("Presiona Z para reiniciar",200,150);
 if(key == 'z' || key == 'Z'){
      pantalla = 0;
      turno = 1;
      j1 = false;
      j2 = false;
      J1.vida = 200;
      J2.vida = 200;
    }
text("Presiona X para seleccionar un nuevo personaje",80,200);
 if(key == 'x' || key == 'X'){
      pantalla = 2;
      turno = 1;
      j1 = false;
      j2 = false;
      J1.vida = 200;
      J2.vida = 200;      
    }
text("Presiona C para volver a pelear",150,250);
 if(key == 'c' || key == 'C'){
      pantalla = 3;
      turno = 1;
      j1 = true;
      j2 = true;
      J1.vida = 200;
      J2.vida = 200;
    }
text("Presiona ESC para cerrar",200,300);
    popMatrix();
    break;
  }  
}

//////////////////////
class personaje{
  int ataque;
  int vida;
  
personaje(int ataque_, int vida_){
ataque = ataque_;
vida = vida_;
  }
  
personaje(){
  }
  
  void PD1(int x, int y){
    translate(x, y);
    pushMatrix();
    //jasson 
    scale(.6);
 fill (0,0,0); // relleno negro
rect (50,500,70,10);//rectángulo pies 
rect (150,500,70,10);//rectángulo pies
rect (60,490,60,10);//rectángulo pies 
rect (150,490,60,10);//rectángulo pies
rect (70,480,30,10);//rectángulo pies 
rect (170,480,30,10);//rectángulo pies
rect (80,470,10,10);//contorno pierna izq
rect (110,480,10,10);//contorno pierna izq
rect (90,460,10,10);//contorno pierna izq
rect (120,470,10,10);//contorno pierna izq
rect (100,440,10,20);//contorno cintura
rect (100,440,70,10);//contorno cintura raya
rect (130,460,10,10);//contorno pierna izq
rect (180,470,10,10);//contorno pierna der
rect (150,480,10,10);//contorno pierna der
rect (170,460,10,10);//contorno pierna der
rect (140,470,10,10);//contorno pierna der
rect (160,440,10,20);//contorno cintura
rect(90,430,10,10);//torso izq
rect(80,420,10,10);//torso izq
rect(70,410,10,10);//torso izq
rect(60,400,10,10);//torso izq
rect(170,430,10,10);//torso der
rect(180,420,10,10);//torso der
rect(190,410,10,10);//torso der
rect(200,400,10,10);//torso der
rect(60,350,40,10);//hombro izq
rect(190,350,20,10);//hombro der

rect(50,360,10,10);//brazo izq
rect(40,370,10,60);//brazo izq
rect(50,430,30,10);//brazo izq
rect(190,350,20,10);//hombro der
rect(210,360,10,10);//hombro der
rect(220,370,10,60);//hombro der
rect(190,430,30,10);//hombro der

rect(100,360,10,10);//barbilla
rect(180,360,10,10);//barbilla
rect(110,370,70,10);//barbilla
rect(90,340,10,10);//cachete izq
rect(190,290,10,60);//cachete der
rect(80,300,10,40);//pelo izq
rect(90,290,10,10);//pelo izq
rect(100,280,10,10);//pelo izq
rect(110,270,70,10);//pelo izq
rect(180,280,10,10);//pelo izq

fill(255);
rect(110,360,70,10);//barbilla
rect(100,300,90,60);//cara
rect(100,290,90,10);//frente
fill(200,200,200);
rect(110,280,70,10);//frente
rect(90,300,10,40);//frente
rect(50,410,20,10);//guante
rect(50,420,30,10);//guante
rect(200,410,20,10);//guante
rect(190,420,30,10);//guante
fill(0);
rect(150,280,10,20);//ligas
rect(90,320,20,10);
rect(130,320,20,20);//ojos
rect(160,320,15,20);//ojos
rect(150,345,5,5);//oyos
rect(160,345,5,5);//oyoss
rect(140,355,5,5);//oyos
rect(170,355,5,5);//oyoss
rect(150,310,5,5);//oyos
rect(160,310,5,5);//oyoss
rect(140,300,5,5);//oyos
rect(170,300,5,5);//oyoss
fill(50,105,50);
rect(60,360,40,10);//hombro izq
rect(50,370,60,30);//hombro izq
rect(100,380,70,60);//hombro izq
rect(50,400,10,10);//hombro izq
rect(70,400,30,10);//hombro izq
rect(80,410,20,10);//hombro izq
rect(90,420,10,10);//hombro izq
rect(190,360,20,10);//hombro der
rect(180,370,40,30);//hombro der
rect(170,380,30,30);//hombro der
rect(170,410,20,10);//hombro der
rect(170,420,10,10);//hombro der
rect(210,400,10,10);//hombro der
fill(50,50,100);
rect(110,450,50,10);//pntalion
rect(100,460,30,10);//pntalion
rect(90,470,30,10);//pntalion
rect(100,480,10,10);//pntalion
rect(140,460,30,10);//pntalion
rect(150,470,30,10);//pntalion
rect(160,480,10,10);//pntalion

    popMatrix();
  }
  //hannibal
  void PD2(int x, int y){
    translate(x, y);
    pushMatrix();
    scale(.6);
  noStroke();
fill (0,0,0); // relleno negro
rect (50,500,70,10);//rectángulo pies 
rect (150,500,70,10);//rectángulo pies
rect (60,490,60,10);//rectángulo pies 
rect (150,490,60,10);//rectángulo pies
rect (70,480,30,10);//rectángulo pies 
rect (170,480,30,10);//rectángulo pies
rect (80,470,10,10);//contorno pierna izq
rect (110,480,10,10);//contorno pierna izq
rect (90,460,10,10);//contorno pierna izq
rect (120,470,10,10);//contorno pierna izq
rect (100,440,10,20);//contorno cintura
rect (100,440,70,10);//contorno cintura raya
rect (130,460,10,10);//contorno pierna izq
rect (180,470,10,10);//contorno pierna der
rect (150,480,10,10);//contorno pierna der
rect (170,460,10,10);//contorno pierna der
rect (140,470,10,10);//contorno pierna der
rect (160,440,10,20);//contorno cintura
rect(90,430,10,10);//torso izq
rect(80,420,10,10);//torso izq
rect(70,410,10,10);//torso izq
rect(60,400,10,10);//torso izq
rect(50,360,10,40);//torso izq
rect(170,430,10,10);//torso der
rect(180,420,10,10);//torso der
rect(190,410,10,10);//torso der
rect(200,400,10,10);//torso der
rect(210,360,10,40);//torso der
rect(60,350,40,10);//hombro izq
rect(190,350,20,10);//hombro der
rect(100,360,10,10);//barbilla
rect(180,360,10,10);//barbilla
rect(110,370,70,10);//barbilla
rect(90,340,10,10);//cachete izq
rect(190,290,10,60);//cachete der
rect(80,300,10,40);//pelo izq
rect(90,290,10,10);//pelo izq
rect(100,280,10,10);//pelo izq
rect(110,270,70,10);//pelo izq
rect(180,280,10,10);//pelo izq

//colores
fill(100,50,50);
rect(90,420,90,10);//raya
rect(60,390,150,10);//raya


fill(215,185,0);
rect(60,360,40,30);//hombro izq
rect(100,370,10,20);//hombro izq
rect(110,380,100,10);//hombro izq
rect(180,370,30,10);//hombro izq
rect(190,360,20,10);//hombro izq
rect(70,400,130,10);//torso 
rect(80,410,110,10);//torso 
rect(100,430,70,10);//cintura

fill(200,130,0); //pantalon
rect(110,450,50,10);//izq
rect(100,460,30,10);
rect(90,470,30,10);
rect(100,480,10,10);
rect(140,460,30,10);//der
rect(150,470,30,10);
rect(160,480,10,10);

fill(100,50,50);//cafe
rect(110,280,70,10);//pelo izq
rect(100,290,90,10);//pelo izq
rect(90,300,30,10);//pelo izq
rect(90,310,20,10);//pelo izq
rect(90,320,10,10);//pelo izq
rect(90,330,20,10);//pelo izq
rect(100,340,10,20);//pelo izq
rect(180,300,10,10);//pelo izq

fill(150,100,100);//cafe
rect(110,310,10,60);//mascara
rect(120,340,60,30);//mascara
rect(180,340,10,20);//mascara

fill(220,190,180); //carne
rect(120,300,60,40);//rostro
rect(180,310,10,30);//rostro
rect(100,320,10,10);//rostro
fill(0,0,0);
rect(140,320,20,20);//ojos
rect(170,320,15,20);//ojos
rect(140,350,10,15);//rejas
rect(155,350,10,15);//rejas
rect(170,350,10,15);//reja
    popMatrix();
  }
  //mike mayers
  void PD3(int x, int y){
    translate(x, y);
    pushMatrix();
    scale(.6);
    noStroke();
fill (0,0,0); // relleno negro
rect (50,500,70,10);//rectángulo pies 
rect (150,500,70,10);//rectángulo pies
rect (60,490,60,10);//rectángulo pies 
rect (150,490,60,10);//rectángulo pies
rect (70,480,30,10);//rectángulo pies 
rect (170,480,30,10);//rectángulo pies
rect (80,470,10,10);//contorno pierna izq
rect (110,480,10,10);//contorno pierna izq
rect (90,460,10,10);//contorno pierna izq
rect (120,470,10,10);//contorno pierna izq
rect (100,440,10,20);//contorno cintura
rect (100,440,70,10);//contorno cintura raya
rect (130,460,10,10);//contorno pierna izq
rect (180,470,10,10);//contorno pierna der
rect (150,480,10,10);//contorno pierna der
rect (170,460,10,10);//contorno pierna der
rect (140,470,10,10);//contorno pierna der
rect (160,440,10,20);//contorno cintura
rect(90,430,10,10);//torso izq
rect(80,420,10,10);//torso izq
rect(70,410,10,10);//torso izq
rect(60,400,10,10);//torso izq
rect(170,430,10,10);//torso der
rect(180,420,10,10);//torso der
rect(190,410,10,10);//torso der
rect(200,400,10,10);//torso der
rect(60,350,40,10);//hombro izq
rect(190,350,20,10);//hombro der

rect(50,360,10,10);//brazo izq
rect(40,370,10,60);//brazo izq
rect(50,430,30,10);//brazo izq
rect(190,350,20,10);//hombro der
rect(210,360,10,10);//hombro der
rect(220,370,10,60);//hombro der
rect(190,430,30,10);//hombro der

rect(100,360,10,10);//barbilla
rect(180,360,10,10);//barbilla
rect(110,370,70,10);//barbilla
rect(90,340,10,10);//cachete izq
rect(190,290,10,60);//cachete der
rect(80,300,10,40);//pelo izq
rect(90,290,10,10);//pelo izq
rect(100,280,10,10);//pelo izq
rect(110,270,70,10);//pelo izq
rect(180,280,10,10);//pelo izq

fill(100,100,100);
rect(80,320,10,10);//oreja
rect(110,360,70,10);//barbilla
rect(100,300,90,60);//cara

fill(80,50,50);
rect(110,280,70,10);//frente
rect(90,300,10,40);//frente
rect(50,410,20,10);//guante
rect(50,420,30,10);//guante
rect(200,410,20,10);//guante
rect(190,420,30,10);//guante
rect(100,290,90,10);
fill(0);

rect(130,320,20,20);//ojos
rect(160,320,15,20);//ojos
rect(120,310,20,10);//ojos
rect(170,310,15,10);//ojos
rect(140,350,30,10);//boca
fill(0,0,50);
rect(60,360,40,10);//hombro izq
rect(50,370,60,30);//hombro izq
rect(100,380,70,60);//hombro izq
rect(50,400,10,10);//hombro izq
rect(70,400,30,10);//hombro izq
rect(80,410,20,10);//hombro izq
rect(90,420,10,10);//hombro izq
rect(190,360,20,10);//hombro der
rect(180,370,40,30);//hombro der
rect(170,380,30,30);//hombro der
rect(170,410,20,10);//hombro der
rect(170,420,10,10);//hombro der
rect(210,400,10,10);//hombro der
fill(0,0,50);
rect(110,450,50,10);//pntalion
rect(100,460,30,10);//pntalion
rect(90,470,30,10);//pntalion
rect(100,480,10,10);//pntalion
rect(140,460,30,10);//pntalion
rect(150,470,30,10);//pntalion
rect(160,480,10,10);//pntalion

 popMatrix();
  }
  
  //it personaje
  void PD4(int x, int y){
    translate(x, y);
    pushMatrix();
    scale(.6);
    scale(-1,1);
    noStroke();
fill (0,0,0); // relleno negro
rect (50,500,70,10);//rectángulo pies 
rect (150,500,70,10);//rectángulo pies
rect (60,490,60,10);//rectángulo pies 
rect (150,490,60,10);//rectángulo pies
rect (70,480,30,10);//rectángulo pies 
rect (170,480,30,10);//rectángulo pies
rect (80,470,10,10);//contorno pierna izq
rect (110,480,10,10);//contorno pierna izq
rect (90,460,10,10);//contorno pierna izq
rect (120,470,10,10);//contorno pierna izq
rect (100,440,10,20);//contorno cintura
rect (100,440,70,10);//contorno cintura raya
rect (130,460,10,10);//contorno pierna izq
rect (180,470,10,10);//contorno pierna der
rect (150,480,10,10);//contorno pierna der
rect (170,460,10,10);//contorno pierna der
rect (140,470,10,10);//contorno pierna der
rect (160,440,10,20);//contorno cintura
rect(90,430,10,10);//torso izq
rect(80,420,10,10);//torso izq
rect(70,410,10,10);//torso izq
rect(60,400,10,10);//torso izq
rect(170,430,10,10);//torso der
rect(180,420,10,10);//torso der
rect(190,410,10,10);//torso der
rect(200,400,10,10);//torso der
rect(60,350,40,10);//hombro izq
rect(190,350,20,10);//hombro der

rect(50,360,10,10);//brazo izq
rect(40,370,10,60);//brazo izq
rect(50,430,30,10);//brazo izq
rect(190,350,20,10);//hombro der
rect(210,360,10,10);//hombro der
rect(220,370,10,60);//hombro der
rect(190,430,30,10);//hombro der

rect(100,360,10,10);//barbilla
rect(180,360,10,10);//barbilla
rect(110,370,70,10);//barbilla
rect(90,340,10,10);//cachete izq
rect(190,290,10,60);//cachete der
rect(80,300,10,40);//pelo izq
rect(90,290,10,10);//pelo izq
rect(100,280,10,10);//pelo izq
rect(110,270,70,10);//pelo izq
rect(180,280,10,10);//pelo izq

fill(255,255,255);
rect(80,320,10,10);//oreja
rect(110,360,70,10);//barbilla
rect(100,300,90,60);//cara

fill(255,255,255);
rect(110,280,70,10);//frente
rect(90,300,10,40);//frente
rect(50,410,20,10);//guante
rect(50,420,30,10);//guante
rect(200,410,20,10);//guante
rect(190,420,30,10);//guante
rect(100,290,90,10);
fill(0,100,0);
rect(130,320,20,20);//ojos
rect(160,320,15,20);//ojos
fill(0);
rect(120,310,20,10);//ojos
rect(170,310,15,10);//ojos
fill(200,0,0);
rect(150,340,10,10);//nariz
rect(120,350,30,10);//boca
rect(80,250,20,10);//pelo izq
rect(70,260,40,10);//pelo izq
rect(60,270,60,10);//pelo izq
rect(50,280,80,10);//pelo izq
rect(60,290,60,10);//pelo izq
rect(70,300,40,10);//pelo izq
rect(80,310,20,10);//pelo izq
rect(170,250,20,10);//pelo ider
rect(160,260,40,10);//pelo der
rect(180,270,30,10);//pelo der
rect(190,280,30,10);//pelo der
rect(200,290,10,10);//pelo der
rect(200,300,10,10);//pelo der
fill(30,30,200);
rect(60,360,40,10);//hombro izq
rect(50,370,60,30);//hombro izq
rect(100,380,70,60);//hombro izq
rect(50,400,10,10);//hombro izq
rect(70,400,30,10);//hombro izq
rect(80,410,20,10);//hombro izq
rect(90,420,10,10);//hombro izq
rect(190,360,20,10);//hombro der
rect(180,370,40,30);//hombro der
rect(170,380,30,30);//hombro der
rect(170,410,20,10);//hombro der
rect(170,420,10,10);//hombro der
rect(210,400,10,10);//hombro der
fill(255,255,0);
rect(110,450,50,10);//pntalion
rect(100,460,30,10);//pntalion
rect(90,470,30,10);//pntalion
rect(100,480,10,10);//pntalion
rect(140,460,30,10);//pntalion
rect(150,470,30,10);//pntalion
rect(160,480,10,10);//pntalion
rect(110,380,50,70);//pecho 
fill(200,0,0);
rect(130,390,10,10);//boton
rect(130,410,10,10);//boton
rect(130,430,10,10);//boton
    popMatrix();
  }
  
  
 //mowgle personaje
  void PD5(int x, int y){
    translate(x,y);
    pushMatrix();
   scale(0.6);
   scale(-1,1);
   noStroke();
fill (0,0,0); // relleno negro
rect (50,500,70,10);//rectángulo pies 
rect (150,500,70,10);//rectángulo pies
rect (60,490,60,10);//rectángulo pies 
rect (150,490,60,10);//rectángulo pies
rect (70,480,30,10);//rectángulo pies 
rect (170,480,30,10);//rectángulo pies
rect (80,470,10,10);//contorno pierna izq
rect (110,480,10,10);//contorno pierna izq
rect (90,460,10,10);//contorno pierna izq
rect (120,470,10,10);//contorno pierna izq
rect (100,440,10,20);//contorno cintura
rect (100,440,70,10);//contorno cintura raya
rect (130,460,10,10);//contorno pierna izq
rect (180,470,10,10);//contorno pierna der
rect (150,480,10,10);//contorno pierna der
rect (170,460,10,10);//contorno pierna der
rect (140,470,10,10);//contorno pierna der
rect (160,440,10,20);//contorno cintura
rect(90,430,10,10);//torso izq
rect(80,420,10,10);//torso izq
rect(70,410,10,10);//torso izq
rect(60,400,10,10);//torso izq
rect(170,430,10,10);//torso der
rect(180,420,10,10);//torso der
rect(190,410,10,10);//torso der
rect(200,400,10,10);//torso der
rect(60,350,40,10);//hombro izq
rect(190,350,20,10);//hombro der

rect(50,360,10,10);//brazo izq
rect(40,370,10,60);//brazo izq
rect(50,430,30,10);//brazo izq
rect(190,350,20,10);//hombro der
rect(210,360,10,10);//hombro der
rect(220,370,10,60);//hombro der
rect(190,430,30,10);//hombro der

rect(100,360,10,10);//barbilla
rect(180,360,10,10);//barbilla
rect(110,370,70,10);//barbilla
rect(90,340,10,10);//cachete izq
rect(190,290,10,60);//cachete der
rect(80,300,10,40);//pelo izq
rect(90,290,10,10);//pelo izq
rect(100,280,10,10);//pelo izq
rect(110,270,70,10);//pelo izq
rect(180,280,10,10);//pelo izq

fill(220,190,180); //carne
rect(80,320,10,10);//oreja
rect(110,360,70,10);//barbilla
rect(100,300,90,60);//cara

fill(50,20,20); //carne
rect(110,280,70,10);//frente
rect(90,300,10,40);//frente
rect(100,290,90,10);
rect(150,260,40,10);//pelo izq
rect(150,270,50,10);//pelo izq
rect(160,280,50,10);//pelo izq
rect(160,290,50,10);//pelo izq
rect(150,300,60,10);//pelo izq
rect(160,310,50,10);//pelo izq
rect(160,320,50,10);//pelo izq
rect(170,330,40,10);//pelo izq
rect(180,340,20,10);//pelo izq

fill(220,190,180); //carne
rect(50,410,20,10);//guante
rect(50,420,30,10);//guante
rect(200,410,20,10);//guante
rect(190,420,30,10);//guante
fill(0);
rect(70,320,10,10);//oreja
rect(140,320,15,15);//ojos
rect(125,315,10,10);//ceja
rect(135,305,10,10);//ceja

rect(140,350,20,10);//boca
rect(130,340,10,10);//boca

fill(220,190,180); //carne
rect(60,360,40,10);//hombro izq
rect(50,370,60,30);//hombro izq
rect(100,380,70,60);//hombro izq
rect(50,400,10,10);//hombro izq
rect(70,400,30,10);//hombro izq
rect(80,410,20,10);//hombro izq
rect(90,420,10,10);//hombro izq
rect(190,360,20,10);//hombro der
rect(180,370,40,30);//hombro der
rect(170,380,30,30);//hombro der
rect(170,410,20,10);//hombro der
rect(170,420,10,10);//hombro der
rect(210,400,10,10);//hombro der
fill(220,190,180); //carne
rect(100,460,30,10);//pntalion
rect(90,470,30,10);//pntalion
rect(100,480,10,10);//pntalion
rect(140,460,30,10);//pntalion
rect(150,470,30,10);//pntalion
rect(160,480,10,10);//pntalion
fill(200,50,0);
rect(110,450,50,10);//pntalion
rect(120,460,30,10);//pntalion
rect(130,470,10,10);//pntalion

fill(50,50,50);
rect(100,400,10,10);//pechos
rect(160,400,10,10);//pechos



    popMatrix();
  }
}
