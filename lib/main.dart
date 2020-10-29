import 'package:check_list_heavy_machinery/pages/animationPage.dart';
import 'package:check_list_heavy_machinery/pages/formPage.dart';
import 'package:check_list_heavy_machinery/pages/homePage.dart';
import 'package:check_list_heavy_machinery/pages/selectVehicePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SelectVehiclePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        FormPage.id: (context) => FormPage(),
        AnimatedPage.id: (context) => AnimatedPage(),
        SelectVehiclePage.id: (context) => SelectVehiclePage(),
      },
    );
  }
}
