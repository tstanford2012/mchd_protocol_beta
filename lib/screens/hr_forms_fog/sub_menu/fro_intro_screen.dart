import 'package:flutter/material.dart';
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
      home: FormsFROIntroScreen(),
    ),
  ));
}

class FormsFROIntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Forms FRO Intro Screen',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'FRO Introduction',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: FormsFROIntroLayout(),
        ),
      ),
    );
  }
}

class FormsFROIntroLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _formsFROIntroListView(context);
  }
}

Widget _formsFROIntroListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Cover Sheet',
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
            'Table of Contents',
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
            'Clinical Guidelines and Protocols',
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
            'Definitions',
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
            'Medical Director Statement',
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
            'Standard of Care Statement',
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
