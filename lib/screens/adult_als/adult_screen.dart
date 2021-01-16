import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mchd_protocol_beta/screens/adult_als/behavioral_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/adult_als/cardiac_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/adult_als/environmental_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/adult_als/medical_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/adult_als/obstetrical_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/adult_als/respiratory_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/adult_als/trauma_screen_adult_als.dart';
import 'package:mchd_protocol_beta/screens/protocol_screen.dart';
import 'package:mchd_protocol_beta/screens/employee_sign_in.dart';
import 'package:mchd_protocol_beta/screens/employee_screen.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';
import 'package:mchd_protocol_beta/screens/adult_als/cardiac_arrest_screen_adult_als.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter',
      home: AdultScreen(),
    ),
  );
}

class AdultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adult Screen',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'ALS Adult Protocols',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: AdultLayout(),
        ),
      ),
    );
  }
}

class AdultLayout extends StatelessWidget {
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
                          builder: (context) => BehavioralAdultALSScreen(),
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
                          builder: (context) => CardiacAdultALSScreen(),
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
                          builder: (context) => CardiacArrestAdultALSScreen(),
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
                          builder: (context) => EnvironmentalAdultALSScreen(),
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
                          builder: (context) => MedicalAdultALSScreen(),
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
                        'Obstetrical',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          //This is the next page that needs done
                          builder: (context) => ObstetricalAdultALSScreen(),
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
                          builder: (context) => RespiratoryAdultALSScreen(),
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
                          builder: (context) => TraumaAdultALSScreen(),
                        ));
                  }),
            ),
          ],
        ),
      ),
    ),
  );
}
