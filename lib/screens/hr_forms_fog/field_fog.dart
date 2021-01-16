import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/field_fog_equipment_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/field_fog_general_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/field_fog_personnel_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/field_fog_response_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/field_fog_station_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/field_fog_vehicle_screen.dart';
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
      home: FormsFieldFOGScreen(),
    ),
  ));
}

class FormsFieldFOGScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Forms Field FOG Screen',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'Field OGs',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: FormsFieldFOGLayout(),
        ),
      ),
    );
  }
}

class FormsFieldFOGLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _formsFieldFOGListView(context);
  }
}

Widget _formsFieldFOGListView(BuildContext context) {
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
            'Statement of Approval',
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
            'Bike Team',
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
              'Equipment',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFieldEquipmentScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'General',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFieldGeneralScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Personnel',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFieldPersonnelScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Response Operations',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFieldResponseScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Station Operations',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFieldStationScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Tactical Emergency Medical Support Team',
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
              'Vehicle Operations',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFieldVehicleScreen(),
                  ));
            }),
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
