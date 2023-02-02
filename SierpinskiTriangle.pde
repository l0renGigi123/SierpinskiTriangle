public void setup(){
   size(500,500); 
   background(191,216,237);
}
public void draw(){
  Sierpinski(15,40,400);
}

public void Sierpinski(int x, int y, int len){

  if (len <= 20){
   
     triangle(x, y,len + x, y, x+len/2, y-len);//top,left,right
  }else{
    fill((float)Math.random()*256,(float)Math.random()*256,(float)Math.random()*256);
    Sierpinski(x, y, len/2);
    Sierpinski(x + len/2, y, len/2);
   Sierpinski(x + len/4, y + len/2, len/2);
  }
  
}
