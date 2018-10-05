fireFlies[] Illumise ;

void setup(){
  frameRate(60);
  noStroke();
  size(1900, 1000);
 
  Illumise = new fireFlies[99];
  for(int i = 0; i < Illumise.length; i++)
    Illumise[i] = new fireFlies();
  
}

void draw(){
  
  fill(0, 10);
  rect(0, 0, width, height);
  
 for(int i = 0; i <Illumise.length; i++){
  Illumise[i].Show();
  Illumise[i].Render();
  Illumise[i].Track();
 }
 
 if(key == 's')
   frameRate(30);
 if(key == 'w')
   frameRate(60);

   
   
 fill(255);
 ellipse(mouseX + (int)(Math.random()*7) - 3, mouseY + (int)(Math.random()*7) - 3, 10, 10);
 
 if(mousePressed){
 fill(171, 252, 245);
 ellipse(mouseX + (int)(Math.random()*11) - 5, mouseY + (int)(Math.random()*11) - 5, 10, 10);
 }
 

}

class fireFlies{
  
 int myX, myY, myColor;
 
 float beginX = (float)(Math.random()*1900) + 1;  
 float beginY = (float)(Math.random()*1000) + 1;  
 float endX = (float)(Math.random()*1900) + 1;  
 float endY = (float)(Math.random()*1000) + 1;   
 float dX;          
 float dY;          
 float x = 0.0;        
 float y = 0.0;       
 float spd = 0.01;   
 float p = 0.0;      

 fireFlies(){
   
  myX = myY = 0;
  myColor = color((int)(Math.random()*3) + 252, (int)(Math.random()*13) + 189, (int)(Math.random()*42) + 57);
  dX = endX - beginX;
  dY = endY - beginY;
 
 }
 
 void Render(){
   
  myX = myX + (int)(Math.random()*21) - 10;
  myY = myY + (int)(Math.random()*21) - 10;
   
   
 }





void Track(){

  p += spd;
  if (p < 1.0) {
    x = beginX + (p * dX);
    y = beginY + (p * dY);
  }
  
    if(mousePressed) {
    x = beginX - (p * dX);
    y = beginY - (p * dY);
  }
  
  
 
  p = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  dX = endX - beginX;
  dY = endY - beginY;


}
 
 void Show(){
    fill(myColor);
    ellipse(myX + x, myY + y, (int)(Math.random()*15), (int)(Math.random()*15)); 
   }

}








