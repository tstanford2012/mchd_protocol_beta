import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/adult_als/adult_screen.dart';
import 'package:mchd_protocol_beta/screens/medicine_reference.dart';
import 'package:mchd_protocol_beta/screens/pedi_vitals_pdf.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/pediatric_screen.dart';
import 'package:mchd_protocol_beta/screens/procedures_screen.dart';
import 'package:mchd_protocol_beta/screens/pediatric_bls/pediatric_screen_bls.dart';
import 'package:mchd_protocol_beta/screens/adult_als/behavioral_assessment_adult_als_pdf.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: PediatricChoiceScreen(),
  ));
}

class PediatricChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCHD',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Center(
              child: Text(
            'MCHD',
            style: TextStyle(color: Colors.white),
          )),
          actions: <Widget>[IconButton(icon: Icon(Icons.search))],
        ),
        body: PediatricChoiceLayout(),
      ),
    );
  }
}

class PediatricChoiceLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return Scaffold(
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
                      'Advanced Life Support',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PediScreen(),
                      ));
                }),
          ),
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
                    'Basic Life Support',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  )),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PediBLSScreen(),
                      ));
                }),
          ),
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
                    'Pediatric Vital Signs',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  )),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PediVitalsPDFScreen();
                  }));
                }),
          ),
        ],
      ),
    ),
  );
}
