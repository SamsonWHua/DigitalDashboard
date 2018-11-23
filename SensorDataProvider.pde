class SensorDataProvider {

  int currentIndex = 0;
  String filePath = "";
  Table dataTable;

  SensorDataProvider(String input) {
    filePath = input;
  }


  void Initialize () {
    dataTable = loadTable(filePath + ".csv", "header");
  }
  void readNext() {
    if (currentIndex < 599) {

      currentIndex += 1;
    } else {
      println("No more data after index " + currentIndex);
    }
  }
  
  int getRPM() {
    return dataTable.getInt(currentIndex, "RPM");
  }
  
  float readFuelLevel() {
    return dataTable.getFloat(currentIndex, "Fuel Level (liter)");
  }
  
  float readRatio() {
    return dataTable.getFloat(currentIndex, "Gear Ratio");
  }
  
  float readX() {
    return dataTable.getFloat(currentIndex, "X");
  }
  
  float readY() {
    return dataTable.getFloat(currentIndex, "Y");
  }
}
