import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/fro_appendix_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/fro_clinical_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/fro_intro_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/fro_med_ref_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/sub_menu/fro_procedures_screen.dart';
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
      home: FormsFROScreen(),
    ),
  ));
}

class FormsFROScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Forms FRO Screen',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'FRO Page',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: FormsFROLayout(),
        ),
      ),
    );
  }
}

class FormsFROLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _formsFROListView(context);
  }
}

Widget _formsFROListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Introduction',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFROIntroScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Appendix',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFROAppendixScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Clinical Guidelines',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFROClinicalScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Medicine Reference',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFROMedRefScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
            title: Text(
              'Procedures',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsFROProceduresScreen(),
                  ));
            }),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'FRO Rehabilitation of Responders',
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
