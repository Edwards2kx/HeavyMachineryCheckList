import 'package:check_list_heavy_machinery/pages/formPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, FormPage.id);
          },
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          color: Colors.black,
          child: Text(
            'INGRESAR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              letterSpacing: 2.5
            ),
          ),
        ),
      ),
    );
  }
}
