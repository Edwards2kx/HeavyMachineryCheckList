import 'package:check_list_heavy_machinery/pages/models/checkPointsModel.dart';
import 'package:check_list_heavy_machinery/pages/models/vehiculeModel.dart';
import 'package:check_list_heavy_machinery/styles/textStyles.dart';
import 'package:check_list_heavy_machinery/widgets/questionCard.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  static String id = 'formPage';
  //List<Vehicle> vehicles = Vehicles.getVehicles();
  //final Vehicle movil = Vehicle(name: 'Front Loader', id: 'frontLoader', description: 'short description of a front loader', imageName: 'assets/loader liugong.png');
  final Vehicle movil = Vehicles().getVehicle(0);

  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;
    final arguments = ModalRoute.of(context).settings.arguments;
    final Vehicle movil2 = Vehicles().getVehicle(0);
    print(arguments);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        
        children: [
          SizedBox(height: 10.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(movil.imageName),
                    fit: BoxFit.contain,
                    height: sHeight * 0.3,
                    width: sWidth,
                  ),
                  FormVehicle(movil: movil),
                ],
              ),
            ),
          ),
          bottomButton(),
        ],
      ),
    );
  }

  Widget bottomButton() {
    double heightButton = 50.0;
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: heightButton,
        decoration: BoxDecoration(
            color: Colors.black,
            //border: BorderRadius.only(topLeft: 20.0, top),
            borderRadius: BorderRadius.all(Radius.circular(heightButton / 2))),
        //BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
        child: Center(
          child: Text(
            'REGISTRAR',
            style: TextStyle(
                color: Colors.white, fontSize: 20.0, letterSpacing: 4.0),
          ),
        ),
      ),
    );
  }
}

enum answer { yes, no }

class FormVehicle extends StatefulWidget {
  const FormVehicle({
    Key key,
    @required this.movil,
  }) : super(key: key);

  final Vehicle movil;

  @override
  _FormVehicleState createState() => _FormVehicleState();
}

class _FormVehicleState extends State<FormVehicle> {

  //List<BoolQuestion> _checkList = CheckPoints.;
  CheckPoints checkPoints = new CheckPoints();
  
  @override
  Widget build(BuildContext context) {

    List<BoolQuestion> _checkList = checkPoints.getCheckList();
    List<QuestionCard> questions = [];

    for(var i in _checkList){
      questions.add(QuestionCard(i.question));
    }
    
//    oilStatus
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(widget.movil.name, style: kVehicleName),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Responsable',
                style: infoStyle,
              ),
              Text('John Doe', style: infoStyle)
            ],
          ),
          SizedBox(height: 10.0),
          ...questions
        ],
      ),
    );
  }
}
