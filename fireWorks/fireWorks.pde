color[] col= new color[]{#FF1A1A,#1AFFD3,#D0FF1A,#FF5703};
ArrayList<fireworks> fw;
float time=0;

void setup(){
  size(500,500);
  background(0);
  noStroke();
  fw= new ArrayList<fireworks>();
  
}


void draw(){
  //saveFrame("Images/d#####.jpg");
  fill(0,25);
  rect(0,0,width,height);
  for(int i=fw.size()-1;i>-1;i--){
    fw.get(i).show();
    
    if(fw.get(i).time<-0.5){
      fw.remove(i);
    }
  }
  
}


void mousePressed(){
  int col_rand=(int)random(100);
  int fillcol = col[col_rand%4];
  float high=random(75,125);
  fw.add(new fireworks(mouseX,height,high,fillcol));
}
