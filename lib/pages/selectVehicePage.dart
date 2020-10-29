import 'package:check_list_heavy_machinery/pages/formPage.dart';
import 'package:check_list_heavy_machinery/styles/colors.dart';
import 'package:flutter/material.dart';

import 'models/vehiculeModel.dart';

class SelectVehiclePage extends StatelessWidget {
  static String id = 'SelectVehiclePage';
  final Vehicles vehicles = new Vehicles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: [
            VehicleCard(vehicles.getVehicle(0)),
            VehicleCard(vehicles.getVehicle(1)),
            VehicleCard(vehicles.getVehicle(2)),
            VehicleCard(vehicles.getVehicle(3)),
            VehicleCard(vehicles.getVehicle(4)),
            VehicleCard(vehicles.getVehicle(5)),
          ],
        ),
      ),
    );
  }
}

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;
  VehicleCard(this.vehicle);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.35;
    final width = MediaQuery.of(context).size.width * 0.40;
    return Card(
      shadowColor: Colors.grey,
      elevation: 1.0,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, FormPage.id,
              arguments: {'id': vehicle.id});
        },
        child: Container(
          padding: EdgeInsets.all(5.0),
          //margin: EdgeInsets.all(5.0),
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                //height: 0.6 * height,
                image: AssetImage(vehicle.imageName),
                fit: BoxFit.contain,
              ),
              Text(vehicle.name),
            ],
          ),
        ),
      ),
    );
  }
}
