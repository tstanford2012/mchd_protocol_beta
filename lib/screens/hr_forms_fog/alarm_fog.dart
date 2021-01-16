import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/alarm_calltaking_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/alarm_notifications_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/alarm_response_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/alarm_staff_scheduling_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/alarm_stations_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/alarm_testing_procedures_screen.dart';
import 'package:mchd_protocol_beta/screens/protocol_screen.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';
import 'package:mchd_protocol_beta/screens/adult_als/behavioral_assessment_adult_als_pdf.dart';

void main() {
  runApp(WillPopScope(
    onWillPop: () {
      return new Future.value(true);
    },
    child: MaterialApp(
      title: 'Flutter',
      home: FormsAlarmFOGScreen(),
    ),
  ));
}

class FormsAlarmFOGScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Forms Alarm FOG Screen',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'ALARM OGs',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: FormsAlarmFOGLayout(),
        ),
      ),
    );
  }
}

class FormsAlarmFOGLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _formsAlarmFOGListView(context);
  }
}

Widget _formsAlarmFOGListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Cover Page',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Introduction',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'CAD Support Decision Tree',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Call Taking',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsAlarmCallTakingScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Change Log',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Credentialing',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Notifications and Failures',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsAlarmNotificationsScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Response',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsAlarmResponseScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Staff and Scheduling',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsAlarmStaffSchedulingScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Standards of Conduct',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Stations',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsAlarmStationssScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Testing Procedures',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsAlarmTestingProcScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Uniform and Personal Appearance',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BehavioralAssesAdultALSPDFScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.redAccent,
        child: ListTile(
          title: Text(
            'Go Home',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
        ),
      ),
    ],
  );
}
