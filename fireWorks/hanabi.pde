class fireworks{
  ArrayList<particle> particles;
  color col;
  PVector Pos;
  float high=100;
  float time=1.5;
  fireworks(float px,float py,float high,color col){
    Pos = new PVector(px,py);
    particles = new ArrayList<particle>();
    this.col=col;
    this.high=high;
    for(int i=0;i<300;i++){
      float ang_rad = PI*random(0,360)/180;
      float scale_vel=random(0,2);
      particles.add(new particle(px,py,scale_vel*cos(ang_rad),scale_vel*sin(ang_rad)));
    }
  }
  
  void show(){
    if(Pos.y>high){
      fill(#FEFFC4);
      Pos.add(new PVector(random(-0.4,0.4),-2));
      ellipse(Pos.x,Pos.y,7,7);
       for(int i=0;i<300;i++){
          particles.get(i).get_pos(Pos.x,Pos.y);
      }
    }else{
      time -= 1/frameRate;
      if(time>0){
        fill(col);
        for(int i=0;i<300;i++){
            particles.get(i).update();
        }
      }
    }
  }
}
