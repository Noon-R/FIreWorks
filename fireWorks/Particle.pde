class particle{
  PVector position;
  PVector acceleration;
  PVector velocity;
  float diameter=5;
  
  particle(float x,float y,float vx,float vy){
    position     = new PVector(x,y);
    velocity     = new PVector(vx,vy);
    acceleration = new PVector(0,0.03);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    
    ellipse(position.x,position.y,diameter,diameter);
  }
  
  void get_pos(float x,float y){
    position     = new PVector(x,y);
  }
}
