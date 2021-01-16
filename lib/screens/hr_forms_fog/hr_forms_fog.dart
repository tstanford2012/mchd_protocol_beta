import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mchd_protocol_beta/screens/employee_sign_in.dart';
import 'package:mchd_protocol_beta/screens/employee_screen.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/alarm_fog.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/appendix.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/calendars.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/field_fog.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/FRO.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/forms_page.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/HR_page.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/introduction.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/MIH_page.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/safety_policy_page.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/transfer_fog.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter',
      home: HRandFOGScreen(),
    ),
  );
}

class HRandFOGScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HR/Forms/FOGs Screen',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'Forms/FOGs/Misc',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: HRandFOGlayout(),
        ),
      ),
    );
  }
}

class HRandFOGlayout extends StatelessWidget {
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
                        'Introduction',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsIntroScreen(),
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
                        'Appendix',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsAppendixScreen(),
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
                        'Calendars',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsCalendarsScreen(),
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
                        'Clinical Guidelines',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsCalendarsScreen(),
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
                        'Alarm Operating Guidelines',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsAlarmFOGScreen(),
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
                        'Field Operating Guidelines',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsFieldFOGScreen(),
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
                        'Transfer Operating Guidelines',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsTransFOGScreen(),
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
                        'First Responder Organizations',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsFROScreen(),
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
                        'Forms',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    //TODO: enter route
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
                        'Human Resources',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    //TODO: enter route
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
                        'Mobile Integrated Health',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsMIHScreen(),
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
                        'Safety Policies',
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormsSafetyScreen(),
                        ));
                  }),
            ),
          ],
        ),
      ),
    ),
  );
}
