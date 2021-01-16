import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/protocol_screen.dart';
import 'package:mchd_protocol_beta/screens/employee_sign_in.dart';
import 'package:mchd_protocol_beta/screens/employee_screen.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/behavioral_screen_pedi_als.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/cardiac_arrest_screen_pedi_als.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/cardiac_screen_pedi_als.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/environmental_screen_pedi_als.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/medical_screen_pedi_als.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/respiratory_screen_pedi_als.dart';
import 'package:mchd_protocol_beta/screens/pediatric_als/trauma_screen_pedi_als.dart';

void main() {
  runApp(WillPopScope(
    onWillPop: () {
      return new Future.value(true);
    },
    child: MaterialApp(
      title: 'Flutter',
      home: PediScreen(),
    ),
  ));
}

class PediScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ALS Pediatric Protocols',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'Pediatric Protocols',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: PediLayout(),
        ),
      ),
    );
  }
}

class PediLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _testGridView(context);
  }
}

Widget _testGridView(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
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
                        'Behavioral',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BehavioralPediALSScreen(),
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
                        'Cardiac',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardiacPediALSScreen(),
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
                        'Cardiac Arrest',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardiacArrestPediALSScreen(),
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
                        'Environmental',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnvironmentalPediALSScreen(),
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
                        'General Medical',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MedicalPediALSScreen(),
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
                        'Respiratory',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RespiratoryPediALSScreen(),
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
                        'Trauma',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TraumaPediALSScreen(),
                        ));
                  }),
            ),
          ],
        ),
      ),
    ),
  );
}
