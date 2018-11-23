SensorDataProvider data = new SensorDataProvider("car_status_Truck_F150");
int index = 0;
float index2 = 0;
void setup() {
  
 
 data.Initialize();
 
 
 
}

void draw(){
  data.readNext();
  index = data.getRPM();
  index2 = data.readRatio();
  println(index, index2);
  
  
}
