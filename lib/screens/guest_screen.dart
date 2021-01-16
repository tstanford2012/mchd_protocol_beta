import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: GuestScreen(),
  ));
}
class GuestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCHD Guest',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Center(child: Text('Guest Portal'))),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.blue,
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
                  color: Colors.blueGrey,
                  child: Center(
                    child: const Text('Home Screen'),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
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
                  color: Colors.blueGrey,
                  child: Center(
                    child: const Text('None'),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GuestScreen(),
                      ));
                }),
          ),
        ],
      ),
    ),
  );
}