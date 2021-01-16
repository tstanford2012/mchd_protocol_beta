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
      home: TraumaAdultBLSScreen(),
    ),
  ));
}

class TraumaAdultBLSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(true);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BLS Adult Trauma protocol',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(
                child: Text(
              'BLS Adult Trauma',
              style: TextStyle(color: Colors.white),
            )),
            actions: <Widget>[IconButton(icon: Icon(Icons.search))],
          ),
          body: BLSTraumaLayout(),
        ),
      ),
    );
  }
}

class BLSTraumaLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _traumaBLSListView(context);
  }
}

Widget _traumaBLSListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Trauma Assessment',
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
            'Amputation',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Burns',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Eviceration',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Head Trauma',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Multi-System Trauma',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Musculoskeletal / Soft Tissue Injury',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Ocular Injury',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Penetrating Injury',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Sexual Assault',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Spinal Trauma',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Taser Injury',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
        ),
      ),
      Card(
        color: Colors.blueGrey,
        child: ListTile(
          title: Text(
            'Traumatic Arrest',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen();
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
