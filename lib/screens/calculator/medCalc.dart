import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/calculator.dart';
import 'package:mchd_protocol_beta/screens/calculator/RSICalc.dart';

class MedCalc extends StatelessWidget {
  MedCalc({Key key, this.text}) : super(key: key);
  String text;
  double ketaDoseIMMG;
  double ketaDoseIVMG;
  double ketaDoseIVML;
  double ketaDoseIMML;
  double rocDose;
  double rocDoseML;
  double kg;
  void _sendDatatoRSI(BuildContext context) {
    String lbs = text;
    kg = (double.parse(lbs) / 2.2);
    ketaDoseIMMG = (kg * 4);
    ketaDoseIVMG = (kg * 2);
    ketaDoseIVML = (ketaDoseIVMG / 50);
    ketaDoseIMML = (ketaDoseIMMG / 50);
    rocDose = kg;
    rocDoseML = (kg / 10);
    String textToSend = "Ketamine Dose\n" +
        (ketaDoseIMMG).toStringAsFixed(0) +
        "mg IM " +
        (ketaDoseIMML).toStringAsFixed(1) +
        " ml\n" +
        (ketaDoseIVMG).toStringAsFixed(0) +
        "mg IV " +
        (ketaDoseIVML).toStringAsFixed(1) +
        " ml";
    String textToSend2 = "Roc Dose\n" +
        (rocDose).toStringAsFixed(0) +
        "mg" +
        " IV " +
        (rocDoseML).toStringAsFixed(1) +
        " ml";
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RSICalc(
            output: textToSend,
            output2: textToSend2,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(
            child: Text(
          'Choose a Category',
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150.0,
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50.0,
                    color: Colors.blueGrey,
                    child: Center(
                      child: const Text(
                        'DSI',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    _sendDatatoRSI(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
