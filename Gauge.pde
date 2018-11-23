class Gauge {
  float Maximum = 80;
  float Minimum = 0;
  float CurrentValue = 0;
  String Units = "";
   
  
  Gauge(float max, String unit){ //Loads maximum value and units into the guage
    Maximum = max;
    Units = unit;
  }
  
  
  
  void setCurrent(){
    
    
  }
  
  void display(int x, int y, float input){
    CurrentValue = input;
    float ratio = CurrentValue / Maximum;
    noFill();
    stroke(255);
    strokeWeight(30);
    arc(x, y, 375, 375, 0, TWO_PI);
    stroke(209,209,209);
    strokeWeight(10);
    arc(x, y, 400, 400, 0, TWO_PI);
    stroke(80);
    strokeWeight(15);
    arc(x, y, 420, 420, HALF_PI+QUARTER_PI, (TWO_PI+QUARTER_PI));
    
    stroke(0,202,270);
    strokeWeight(15);
    
    
    
 
    float radianRatio = (TWO_PI - HALF_PI)*(1-ratio);
    
    arc(x, y, 420, 420, HALF_PI+QUARTER_PI, (TWO_PI+QUARTER_PI) - radianRatio);
    
 
    noStroke();
    fill(191,191,191);
    quad(x+125,y+100,x-125,y+100,x-175,y+205,x+175,y+205);
    textSize(100);
    
    fill(0,202,273);
    textFont(trench);
    text(input, x-145, y+20);
    
    textSize(50);
    textFont(trench);
    text(Units, x-100, y+175);
    
    
    
    
    
  }
  
  
  
  
}
