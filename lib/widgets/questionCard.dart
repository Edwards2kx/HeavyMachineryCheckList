import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  final String question;

  const QuestionCard(this.question);
  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  double heightQC = 120.0;
  List<bool> answerList = [false, false];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        width: double.infinity,
        height: heightQC,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  selectedColor: Colors.black,
                  fillColor: (answerList[0]==true)? Colors.greenAccent[100]: Colors.redAccent[100],
                  //fillColor: Colors.greenAccent[100],
                  borderColor: Colors.greenAccent[300],
                  //selectedBorderColor: Colors.greenAccent[200],
                  selectedBorderColor: (answerList[0]==true)? Colors.greenAccent[200]: Colors.redAccent[200],
                  borderWidth: 2.0,
                  onPressed: (index) {
                    print('pulsaste en $index');
                    setState(() {
                      answerList[0] = false;
                      answerList[1] = false;
                      answerList[index] = true;
                    });
                  },
                  children: [
                    Container(
                      width: 80.0,
                      alignment: Alignment.center,
                      child: Text('SI'),
                    ),
                    Container(
                      width: 80.0,
                      alignment: Alignment.center,
                      child: Text('NO'),
                    ),
                  ],
                  isSelected: answerList,
                ),
                // FlatButton(
                //   child: Text('Cumple'),
                //   onPressed: () {
                //     print('cumple la condicion');
                //   },
                // ),
                // SizedBox(width: 30.0,),
                // FlatButton(
                //   child: Text('No cumple'),
                //   onPressed: () {
                //     print('cumple la condicion');
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
