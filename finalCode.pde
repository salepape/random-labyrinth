//-----------------------------------------------------------VARIABLES-----------------------------------------------------------//

// -------------------------- sert à tout le programme -------------------------- //

// coordonnées de la fenêtre //
int x;
int y; 
// coordonnées de la matrice //
int xp;
int yp; 

// -------------------------- sert pour l'aléatoire ----------------------------- //

// coordonnées du point de départ //
int xdepart;
int ydepart; 
// coordonnées du point d'arrivée //
int xa;
int ya; 
// coordonnées des points formant le chemin //
int xd = xdepart;
int yd = xdepart; 
// direction (+1 ou -1) des chemins aléatoires //
int xv;
int yv; 
// savoir si le chemin se constuit verticalement ou horizontalement //
int z; 

// ----------------------------------dimension fenêtre-------------------------------- //

// nb de chemins de côté pour la fenêtre //
int b = 21;
// dimension fenêtre (truc à modifier)//
int c = 33;
int dim = b*c ;
// taille du chemin pour avoir b chemins de côté //
int a = dim / b;
// matrice //
int [][]tab = new int [b][b];

// --------------------------------------- images -------------------------------------- //

PImage e;
PImage e1;
PImage e2;
PImage e3;
PImage e4;
PImage e5;
PImage e6;
PImage f;
PImage g; 
PImage h;

int bon = 0;
int temps;
int pieces;
int bombes;
int puits;
int trappes;
int crabe;
int coeur;

// ------------------------- variable pour distance -------------------------//

int d;

// --------------------------- coordonnées bonhomme ---------------------------//

int xb;
int yb;
int vitesse = 3*a/8;

// -------------------------------- taille du bonhomme (diamètre) -------------------//

int t = 2*a/3;

//------------------------------------- autres ---------------------------------------//

int alea = 0;
int points = 0;
int fin = 0;
int vie = 2;
int tps;
int k = 0;
int q;
int p;
int campagne;
int r;
int xx;
int yy;

//-----------------------------------------VOID ESSENTIELS----------------------------------------//

void setup(){
    surface.setSize(5*dim/4,dim);
    // changer les dim des images pour pouvoir rapetisser la fenêtre //
    // prendre coordonnées souris pour choisir ...//
    noStroke();
    // noCursor();
            }

void draw(){

    switch (k){
        case 0 : 
           // MENU PRINCIPAL //
           noStroke();
           e = loadImage("panneaumenu.png");
           e6 = loadImage("fond2.jpg");
           e6.resize(866,693);
           background(e);
           nivdiff();
           campagne = 0;
           p = 0;
           vie = 2;
           points = 0;
       break;

       case 1 :
           switch (r){      
               case 1:
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("crabe_fermee.png");
                   e4 = loadImage("crabe_ouverte.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("sable.png");
                   h = loadImage("eau.png");
               break;      
               case 2 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("croco_fermee.png");
                   e4 = loadImage("croco_ouverte.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("herbenoire2.png");
                   h = loadImage("marais.png");
               break;    
               case 3 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("dalles.png");
                   e4 = loadImage("bombe2.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("dalles.png");
                   h = loadImage("grattesciel.png");
               break;      
               case 4 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("terrevol.png");
                   e4 = loadImage("flamme.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("terrevol.png");
                   h = loadImage("lave.png");
               break;     
               case 5 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");                                                         
                   e3 = loadImage("egouts.png");
                   e4 = loadImage("egouts2.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("bitume.png");
                   h = loadImage("mur.png");
               break;      
               case 6 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("plantefermee.png");
                   e4 = loadImage("plante.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("terre.png");
                   h = loadImage("foret.png");
               break;     
               case 7 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("neige.png");
                   e4 = loadImage("stalagmites.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("neige.png");
                   h = loadImage("montagnes.png");
               break;     
               case 8 :
                   e1 = loadImage("bombe.png");
                   e2 = loadImage("coeur.png");
                   e3 = loadImage("cactus3.png");
                   e4 = loadImage("cactus2.png");
                   f = loadImage("personnage laby.png"); 
                   g = loadImage("craquele.png");
                   h = loadImage("desert.png");
               break;
                        }
           e1.resize(a,a);
           e2.resize(a,a);
           e3.resize(a,a); 
           e4.resize(a,a);
           f.resize(t,t);
           g.resize(dim,dim);
           h.resize(dim,dim);
           p = p + 1;
           d = 0;
           pieces = 10;
           coeur = 1;
           bon = 0;
           crabe = 3;
               while(d < 15){
                   xdepart = int(random(0,21));
                   ydepart = int(random(0,21));
                   xa = int(random(0,21));
                   ya = int(random(0,21));
                   d = int(sqrt((pow(xdepart - xa, 2)+pow(ydepart - ya,2))));
                                }
           xd = xdepart ;
           yd = ydepart ;
               while (bon !=1){
                   switch(alea){
                       case 1 :
                           puits = 1;
                           trappes = 2;
                           bombes = 1;
                           alea();
                           puits();
                           trappes();
                           bombes();
                           q = 40;
                           break;
                       case 2 :
                           puits = 2;
                           trappes = 3;
                           bombes = 2;
                           alea3();
                           puits();
                           trappes();
                           bombes();
                           q = 45;
                       break;
                       case 3 :
                           puits = 3;
                           trappes = 5;
                           bombes = 3;
                           alea2();
                           puits();
                           trappes();
                           bombes();
                           q = 50;
                       break;
                                    }
           test();
                                  }
           xb = xdepart * c + a/2;
               yb = dim - ydepart * c - a/2;
               chemin();
               piece();
               crabe();
               coeur ();
               tps = int(millis()/1000);
               fin = 0;
       break;

       case 2 :
           if (vie != -1){
               if (fin == 0){
                   temps = int(millis()/1000) - tps;
                   background(0, 0, 0);
                   image(g,0,0,dim,dim);
                   coordonneesbonhomme();
                   laby();
                   pers();
                   affichepoints();
               if (fin != 0){
                   if (points == 10){
                       points = points + 3;
                                         }
                       points = points + int((q - temps)/3);
                                }
                  }else{
                       background(0);
                       noStroke();
                       background(e6);
                       rect(5*a,4*a,14*a,8*a);
                       rect(dim - a*8, dim - a*3, a*7, a*2);
                       bravo();
                       continuer();
                  if (campagne == 1){
                       switch (p){
                            case 3 :
                            alea = 2;
                            break;
                            case 6 :
                            alea = 3;
                            break;
                                 }
                                    }
                            }
                  }else{
                       background(0);
                       noStroke();
                       background (e6);
                       rect(5*a,4*a,14*a,8*a);
                       rect(dim - a*8, dim - a*3, a*7, a*2);
                       perdu();
                       revenir();
                       }
                  break;
                  case 4 : 
                  background(e6);
                  paysage();
                  break;

                  }
             }


 //--------------------------------------------------------LABY------------------------------------------------------------------------------//

void laby(){
    for ( x = 0 ; x < dim; x = x + a){
        for ( y = 0 ; y < dim; y = y + a){
            yp = ((dim - y)/a )- 1;
            xp = x/a;
                switch (tab[xp][yp]){   
                    case 0: // mur //
                        image(h,x,y,a,a); 
                    break;
                    case 1: // chemin //
                        image(g,x,y,a,a);
                    break;
                    case 2: // pièce//
                        image(g,x,y,a,a);
                        stroke(100,100,100);
                        fill(255,220,0);
                        ellipse(x + (a/2),y + (a/2), 3*a/4, 3*a/4);
                    break;
                    case -1: // puits //
                        image (g,x,y,a,a);
                        stroke (100,100,100);
                        fill(0,0,0);
                        ellipse(x + (a/2), y + (a/2), a, a);
                    break;
                    case -2: // trappes //
                        d = int(sqrt(pow(xb/c - xp, 2)+pow((dim - yb)/c - yp,2)));
                        image (g,x,y,a,a);
                            if (d < 3){
                                stroke (100,100,100);
                                fill(0,0,0);
                                rect(x, y, a, a);
                                      }
                    break;   
                    case -3: // bombes //
                        image (g,x,y,a,a);
                        image (e1,x,y,a,a);
                    break;   
                    case 5: // monstres //
                        image (g,x,y,a,a);
                            if ((millis() / 1000) % 2 <= 0){
                                image(e4, x, y);
                            }else{
                                image(e3, x, y);
                                         }
                    break;
                    case 4: // coeur //
                        image(g,x,y,a,a);
                        image(e2, x + a/3, y + a/3, a/2, a/2);
                    break;  
                    case 20: // pt départ //
                        image(g,x,y,a,a);
                    break;
                    case 30: // pt arrivée //
                        e5 = loadImage("portesortie.png");
                        image(e5,x,y,a,a);
                    break;
                                    }
                                         }
                                     }
           }

void chemin(){ 
    tab[xdepart][ydepart] = 20;
    tab[xa][ya] = 30;
             }


  //--------------------------------------------------------PERS------------------------------------------------------------------------------//

void pers(){
    image(f, xb - a/3, yb - a/3, t, t);
           }


   //--------------------------------------------------------BOUGE------------------------------------------------------------------------------//

void keyPressed() {
    int i = int(xb/c); 
    int j = int((dim - yb)/c); 

        if(keyCode == UP && yb > a){
            if (tab  [i][j + 1] == 0 && (j + 1)* c - (dim - yb) <= vitesse + t/2){
                yb = dim -((j + 1)*c - t/2);
            }else{
                yb -= vitesse;
                 }
                                                                                              }
        if (keyCode == UP && yb < a + 1 && yb > t/2 + vitesse/2) {
            yb -= vitesse/2;
        }else{
            yb -= 0;
             }
        if(keyCode == DOWN && yb < dim - a + 1) {
               if (tab[i][j - 1] == 0 && dim - yb - j * c <= vitesse + t/2){
                yb = dim -(j *c) - t/2;
            }else{
                yb += vitesse;
                 }
                                                }
        if (keyCode == DOWN && yb > dim - a && yb < dim - t/2 - vitesse/2) {
            yb += vitesse/2;
        }else{
            yb += 0;
             }
        if (keyCode == LEFT && xb > a - 1) {
            if (tab[i - 1][j] == 0 && xb - i * c <= vitesse + t/2){
                xb = i*c + t/2;
        }else{
            xb -= vitesse;
             }
    x -= 10;
                                           }
        if (keyCode == LEFT && xb < a && xb > t/2 + vitesse/2) {
            xb -= vitesse/2;
        }else{
            xb -= 0;
             }
         if (keyCode == RIGHT && xb < dim - a) {
            if (tab[i + 1][j] == 0 && (i + 1)* c - xb <= vitesse + t/2){
                xb = (i + 1)*c - t/2;
            }else{
                xb += vitesse;
                 }
                                               }
        if (keyCode == RIGHT && xb > dim - a - 1 && xb < dim - t/2 - vitesse/2) {
            xb += vitesse/2;
        }else{
            xb += 0;
             }
        if (keyCode == 'P') {
            k = 0;
            fin = 0;
                            }
                  }

 // alea -> facile //
void alea(){
    for ( x = 0 ; x < dim; x = x + a){
        for ( y = 0 ; y < dim; y = y + a){
            yp = ((dim - y)/a )- 1;
            xp = x/a;
            tab[xp][yp] = 0;
                                         }
                                     }
    while (xd != xa || yd != ya){
        z = int(random(1,11));
        xv = 0;
        yv = 0;
               if (xa > xd){
                    if (z < 6){
                        xv = 1;
                              }
                    if (z < 3){
                        xv = -1;
                              }
                   }else{
                        if (z < 6){
                            xv = 1;
                                  }
                        if (z < 4){
                            xv = -1;
                                  }
                        }
               if (ya > yd){
                    if (z > 5){
                        yv = 1;
                              }
                    if (z > 8){
                        yv = -1;
                              }
                   }else{
                        if (z > 5){
                            yv = 1;
                                  }
                        if (z > 7){
                            yv = -1;
                                  }
                        }
               if (xd == 0 && xv == -1){
                    xv = 1;
                                       }
               if (xd == b - 1 && xv == 1){
                    xv = -1;
                                          }
               if (yd == 0 && yv == -1){
                    yv = 1;
                                       }
               if (yd == b - 1 && yv == 1){
                    yv = -1;
                                          } 
         tab[xd][yd] = 1;
        xd = xd + xv;
          yd = yd + yv;
          tab[xd][yd] = 1;
                                   }
             }

// alea3 -> moyen //
void alea3() {
    for ( x = 0 ; x < dim; x = x + a){
        for ( y = 0 ; y < dim; y = y + a){
            yp = ((dim - y)/a )- 1;
            xp = x/a;
            tab[xp][yp] = 0;
                                         }
                                     }
    int hu = 0;
        while (hu < 2) {
            for (x = 1 ; x < b ; x = x + 2){
                for (y = 1 ; y < b ; y = y + 2){
                    tab [x][y] = 2;
                                               }
                                           }
            for (x = 0 ; x < b ; x = x + 1){
                for (y = 0 ; y < b ; y = y + 1){
                    if (tab[x][y] == 2){
                              z = int(random(0,2));
                              xv = 0;
                              yv = 0;
                                   if (z == 0){
                                        xv = int(random (1,3)); 
                                   }else{
                                        yv = int(random (1,3)); 
                                         }
                                   if (xv == 2){
                                        xv = -1;
                                                  }
                                   if (yv == 2){
                                        yv = -1;
                                                  }
                                   if( hu == 1){
                                        tab[x][y] = 1;
                                                  }
                              tab[x + xv][y + yv] = 1; 
                                                }
                                               }
                                           }
    hu = hu + 1;
                        }
             }

//--------------------------------------------------------ALEA 2-----------------------------------------------------------------------------//

// alea2 -> difficile //
    void alea2() {
        for ( x = 0 ; x < dim; x = x + a){
            for ( y = 0 ; y < dim; y = y + a){
                yp = ((dim - y)/a )- 1;
                xp = x/a;
                tab[xp][yp] = 1;
                                             }
                                         }
        for (x = 1 ; x < b ; x = x + 2){
            for (y = 1 ; y < b ; y = y + 2){
                tab [x][y] = 2;
                                           }
                                       }
        for (x = 0 ; x < b ; x = x + 1){
            for (y = 0 ; y < b ; y = y + 1){
                if (tab[x][y] == 2){
                    z = int(random(0,2));
                    xv = 0;
                    yv = 0;
                        if (z == 0){
                            xv = int(random (1,3));               
                        }else{
                            yv = int(random (1,3));               
                             }
                             if (xv == 2){
                                  xv = -1;
                                         }
                             if (yv == 2){
                                  yv = -1;
                                         }
                         tab[x][y] = 0; 
                         tab[x + xv][y + yv] = 0;
                                         }
                                                }
                                           }
                    }

//-------------------------------------------------------------TEST-------------------------------------------------------------------------//

void test(){
    xd = xdepart ;
    yd = ydepart ;
    temps = millis();
        while (bon != 1 && millis() < temps + 20){
            z = int(random(0,2));
            xv = 0;
            yv = 0;
                if (z == 0){
                    xv = int(random (1,3));
                }else{
                    yv = int(random (1,3));
                     }
                if (xv >= 2){
                          xv = -1;
                                 }
                  if (yv >= 2){
                           yv = -1;
                                 }
                    if (xd == 0 && xv == - 1){
                           xv = - xv;
                                              }
                    if (xd == b - 1 && xv == 1){
                           xv = - xv;
                                                }
                    if (yd == 0 && yv == - 1){
                           yv = - yv;
                                              }
                    if (yd == b - 1 && yv == 1){
                           yv = - yv;
                                                }
                    if (tab [xd + xv][yd + yv] <= 0){
                           xv = 0;
                           yv = 0;
                                                     }
            xd = xd + xv;
               yd = yd + yv;
               if (xd == xa && yd == ya){
                   bon = 1;
                                     }
                                                  }
           }

//------------------------------------------------------------PIECE--------------------------------------------------------------------------//

void piece(){
    while (pieces != 0){
        x = int(random(0,21));
        y = int(random(0,21));
            if (tab[x][y] == 1){
                tab[x][y] = 2;
                pieces = pieces - 1;
                               }
                       }
            }

//------------------------------------------------------------PUITS-------------------------------------------------------------------------//

void puits () {
    while (puits != 0){
        x = int(random(0,b));
        y = int(random(0,b));
            if (tab[x][y] == 1){
                tab[x][y] = -1;
                puits = puits - 1;
                               }
                      }
              }

//------------------------------------------------------------TRAPPES-------------------------------------------------------------------------//

void trappes () {
    while (trappes != 0){
        x = int(random(0,b));
        y = int(random(0,b));
            if (tab[x][y] == 1){
                tab[x][y] = - 2;
                trappes = trappes - 1;
                               }
                        }
                }

//------------------------------------------------------------COEUR-------------------------------------------------------------------------//

void coeur () {
    int coeur = int(random(0,2));
        while (coeur !=0) {
            x = int(random(0,b));
            y = int(random(0,b));
                if (tab[x][y] == 1){
                    tab[x][y] = 4;
                    coeur = coeur - 1;
                                   }
                          }
            k = 2;
              }

//------------------------------------------------------------BOMBES-------------------------------------------------------------------------//

void bombes () {
    while (bombes != 0){
        x = int(random(0,b));
        y = int(random(0,b));
            if (tab[x][y] == 1){
                tab[x][y] = - 3;
                bombes = bombes - 1;
                               }
                       }
               }

//------------------------------------------------------------CRABE ...-------------------------------------------------------------------------//

void crabe () {
    while (crabe != 0){
        x = int(random(0,b));
        y = int(random(0,b));
            if (tab[x][y] == 1){
                tab[x][y] = 5;
                crabe = crabe - 1;
                               }
                      }
              }

//---------------------------------------------------COORDONNEE BONHOMME-----------------------------------------------------------------//
void coordonneesbonhomme(){
    int i = int(xb/c); 
    int j = int((dim - yb)/c); 
        switch(tab[i][j]){
            case 2 : // pièces //
                tab[i][j] = 1;
                points = points + 1;
            break;
            case -1 : // puits //
                    vie = vie - 1;
                    xb = xdepart*c + a/2;
                    yb = dim - ydepart*c - a/2;
                    points = points - 1;
            break;
               case -2 : // trappes //
                   vie = vie - 1;
                    xb = xdepart*c + a/2;
                    yb = dim - ydepart*c - a/2;
                    points = points - 1;
               break;
               case -3 : // bombes //
                   vie = vie - 1;
                   xb = xdepart*c + a/2;
                   yb = dim - ydepart*c - a/2;
                   tab [i][j] = 1;
                   points = points - 1;
               break;
               case 5 : // marteaux //
                   if ((millis() / 1000) % 2 <= 0){
                        vie = vie - 1;
                        xb = xdepart*c + a/2;
                        yb = dim - ydepart*c - a/2;
                                                  }
               break;
               case 4 : // coeur //
                   tab[i][j] = 1;
                   vie = vie + 1;
               break;
               case 30 : // arrivée //
                   fin = 1;
               break;
                           }
                            }

// ---------------------------------------------------------------SOURIS------------------------------------------------------------------------//
void mousePressed(){
    if (k == 4){
        if(mouseX > a*1 && mouseX <a*12 && mouseY > a*3 && mouseY < a*6){
           r = 5;
           k = 1;
                                                                                   }
       if(mouseX > a*1 && mouseX <a*12 && mouseY > a*7 && mouseY < a*10){ 
           r = 1;
           k = 1;
                                                                                    }
       if(mouseX > a*1 && mouseX <a*12 && mouseY > a*11 && mouseY < a*14){ 
           r = 6;
           k = 1;
                                                                                          }
       if(mouseX > a*1 && mouseX <a*12 && mouseY > a*15 && mouseY < a*18){ 
           r = 3;
           k = 1;
                                                                                     }
       if(mouseX > a*13 && mouseX <a*20 && mouseY > a*3 && mouseY < a*6){ 
           r = 2;
           k = 1;
                                                                                    }
       if(mouseX > a*13 && mouseX <a*24 && mouseY > a*7 && mouseY < a*10){ 
           r = 7;
           k = 1;
                                                                                          }
       if(mouseX > a*13 && mouseX <a*24 && mouseY > a*11 && mouseY < a*13){ 
           r = 4;
           k = 1;
                                                                                           }
       if(mouseX > a*13 && mouseX <a*24 && mouseY > a*14 && mouseY < a*17){ 
           r = 8;
           k = 1;
                                                                                      }
               }

   if (k == 0){
         if (mouseX > a*17 && mouseX <a*22 && mouseY > a*5 && mouseY < a*7){
              alea = 1;
              k = 4;
                                                                                           }
         if (mouseX > a*17 && mouseX <a*22 && mouseY > a*7 && mouseY < a*9){
             alea = 2;
             k = 4;
                                                                                        }
         if (mouseX > a*17 && mouseX <a*22 && mouseY > a*9 && mouseY < a*11){
             alea = 3;
             k = 4;
                                                                                         }
         if (mouseX > a*17 && mouseX <a*22 && mouseY > a*11 && mouseY < a*13){
             alea = 1;
             k = 4;
             campagne =1;
                                                                                          }
                }

    if (k == 2 && vie >= 0 && fin != 0){
        if (mouseX > dim - a*8 && mouseX < dim - a*2 && mouseY > dim - a*3 && mouseY < dim - a){
            k = 4;

         if (p == 9 && campagne == 1){
            k = 0;
                                    }
                                                                                                            }
                                       }

    if (k == 2 && vie < 0){
        if (mouseX > dim - a*8 && mouseX < dim - a*2 && mouseY > dim - a*3 && mouseY < dim - a){
            k = 0;
                                                                                                            }
                          }
                   }

//---------------------------------------------------------------TEXTE------------------------------------------------------------------------//

void affichepoints(){
    int taille = a;
    fill(210,0,0);
    PFont maTypo = createFont("comic sans ms", taille);
    textFont(maTypo, taille);
    text("pts : " + points, dim + 15, taille + 30);
    text("vies : " + vie, dim + 15, taille*2 + 30);
    text("tps : " + temps, dim + 15, taille*3 + 30)             ;
                    }

void bravo(){
    int taille = 3*a;
    fill(0,0,0);
    PFont maTypo = createFont("comic sans ms", taille);
    textFont(maTypo, taille);
    text("BRAVO !!", 5.5*a, 6.5*a);
    taille = 2*a;
    textFont(maTypo, taille);
    text(points + " points", 5.5*a, 9.5*a);
    text(temps + " s", 5.5*a, 11.5*a);
            }

void perdu(){
    int taille = 3*a;
    fill(0,0,0);
    PFont maTypo = createFont("comic sans ms", taille);
    textFont(maTypo, taille);
    text("PERDU !!", 5.5*a, 6.5*a);
    taille = 2*a;
    textFont(maTypo, taille);
    text(points + " points", 5.5*a, 9.5*a);
    text(temps + " s", 5.5*a, 11.5*a);
            }

void nivdiff(){
    int taille = a;
    fill(0,0,0);
    PFont maTypo = createFont("comic sans ms", taille);
    textFont(maTypo, taille);
    text("FACILE", a*17.5, a*6.75);
    text("MOYEN", a*17.5, a*9);
    text("DIFFICILE", a*16.75, a*11.25);
    text("CAMPAGNE", a*16.75, a*13.5);
              }

void paysage(){
    int taille = a;
    fill(0,0,0);
    PFont maTypo = createFont("comic sans ms", taille);
    textFont(maTypo, taille);
    text("BANLIEUE", a*1.5, a*5.3);
    text("PLAGE", a*1.5, a*9.3);
    text("FORET", a*1.5, a*13.3);
    text("VILLE", a*1.5, a*17.3);
    text("MARAIS", a*13.5, a*5.3);
    text("MONTAGNES", a*13.5, a*9.3);
    text("VOLCANS", a*13.5, a*13.3);
    text("DESERT", a*13.5, a*17.3);
              }              

void continuer(){
    int taille = a;
    fill(150,0,0);
    PFont maTypo = createFont("comic sans ms", taille);
    textFont(maTypo, taille);
    text("CONTINUER", dim - a*7.5, dim - a*1.5);
                }

void revenir(){
   int taille = a;
   fill(150,0,0);
   PFont maTypo = createFont("comic sans ms", taille);
   textFont(maTypo, taille);
   text("MENU", dim - a*7.5, dim - a*1.5);
              }
