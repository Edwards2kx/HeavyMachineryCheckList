class Vehicle {
  final String name;
  final String id;
  final String description;
  final String imageName;
  double horoumeter = 0;

  Vehicle({this.name, this.id, this.description, this.imageName});
  //double
  //Vehicle({})

}

class CheckList {
  bool oilMotor;
  bool coolerWater;
  bool oilHidraulic;
  bool oilTransmition;
  bool combustible;
  bool bulk;
  bool interiorLights;
  bool direction;
  bool brakes;
  bool safeBelt;
  bool mirrors;
  bool cranes;
  bool lights;
  bool indicators;
  bool hidraulicCilinders;
  bool chair;
  bool reverseAlarm;
  bool fuelLeak;
  bool coolWaterLeak;
  bool oilLeak;
  bool extintor;
  bool horn;
  bool windows;
  bool tiresStatus;
  bool reflectiveSignal;
  bool climbLadder;
  bool greaseLines;
  bool doorStatus;
  bool windowCleaners;
  bool bodyPainting;
  bool bodyDamage;
  bool cleanCabin;
  bool airConditioner;
}

class Vehicles {
  final List<Vehicle> vehicles = [
    Vehicle(
        name: 'Excavator Backhoe Loader',
        id: 'excavator',
        description: 'short description of a excavator',
        imageName: 'assets/Excavator Backhoe loader Komatsu.png'),
    Vehicle(
        name: 'Wheel Loader',
        id: 'wheelLoader',
        description: 'short description of a front loader',
        imageName: 'assets/loader liugong.png'),

    Vehicle(
        name: 'Fork Lift',
        id: 'forkLift',
        description: 'short description of a forkLift',
        imageName: 'assets/Forklift - caterpillar.png'),
    Vehicle(
        name: 'Grader 797',
        id: 'grader',
        description: 'short description of a grader',
        imageName: 'assets/Grader 797 Caterpillar.png'),
    Vehicle(
        name: 'Bulldozer',
        id: 'bulldozer',
        description: 'short description of a Bulldozer',
        imageName: 'assets/Bulldozer caterpillar.png'),
    Vehicle(
        name: 'DumbTruck',
        id: 'dumbTruck',
        description: 'short description of a DumbTruck',
        imageName: 'assets/Caterpillar 797F Caterpillar.png'),

  ];

  List<Vehicle> getVehicles() {
    return vehicles;
  }

  Vehicle getVehicle(int index) {
    return vehicles[index];
  }

  // Vehicle getVehicleById(String id){
  //   //return 
  //   //vehicles
  // }
}
