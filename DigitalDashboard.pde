SensorDataProvider data = new SensorDataProvider("car_status_Truck_F150");
Gauge fuel = new Gauge(80, "Liters");
Gauge RPM = new Gauge(3000, "RPM");
int index = 0;
float index2 = 0;
PFont trench;


void setup() {
 background(30,30,30);
 size(1920,1080);
 trench = createFont("trench100free.ttf",90);
 data.Initialize();
 
 
 
}

void draw(){
  background(30);
  data.readNext();
  fuel.display(300,500,data.readFuelLevel());  
  RPM.display(1000,500,data.getRPM());
  delay(1000);
}
