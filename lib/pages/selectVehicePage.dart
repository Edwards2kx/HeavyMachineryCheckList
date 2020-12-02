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
      appBar: AppBar(
        title: Text('Choose your machine'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: [
            VehicleCardSelection(
              vehicle: vehicles.getVehicle(0),
              nickname: 'ECO-1',
              horometer: '1200 hrs',
              status: 'OPERATIVE',
              lastCheck: '17/10/2020',
            ),
            VehicleCardSelection(
              vehicle: vehicles.getVehicle(1),
              nickname: 'Tango-6',
              horometer: '1800 hrs',
              status: 'OPERATIVE',
              lastCheck: '17/10/2020',
            ),
            VehicleCardSelection(
              vehicle: vehicles.getVehicle(2),
              nickname: 'End Product Loader',
              horometer: '3200 hrs',
              status: 'Out of service',
              lastCheck: '17/10/2020',
            ),
          ]),
        ),
      ),
    );
  }
}

class VehicleCardSelection extends StatelessWidget {
  final Vehicle vehicle;
  final String nickname;
  final String lastCheck;
  final String status;
  final String horometer;

  const VehicleCardSelection(
      {Key key,
      this.vehicle,
      this.nickname,
      this.lastCheck,
      this.status,
      this.horometer})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.25;
//    final width = MediaQuery.of(context).size.width * 0.40;
    return Card(
      shadowColor: Colors.grey,
      elevation: 1.0,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, FormPage.id,
              arguments: {'id': vehicle.id});
        },
        child: Container(
          height: height,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: height,
                  padding: EdgeInsets.all(4.0),
                  color: Colors.greenAccent[200],
                  //color: Colors.brown[100],
                  child: Image(
                    image: AssetImage(vehicle.imageName),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      machineName(context),
                      Divider(),
                      machineInfo(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column machineName(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nickname,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          vehicle.name,
          overflow: TextOverflow.fade,
        ),
      ],
    );
  }

  Widget machineInfo(BuildContext context) {
    return Column(
      children: [
        myDataRow(context, 'LastCheck:', lastCheck),
        myDataRow(context, 'Status:', status),
        myDataRow(context, 'Horometer:', horometer),
      ],
    );
  }

  Row myDataRow(BuildContext context, String leading, String trailing) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            leading,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            trailing,
            style: Theme.of(context).textTheme.bodyText1, overflow: TextOverflow.ellipsis, softWrap: false,
          ),
        )
      ],
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


class NewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green
      ),
    );
  }
}
