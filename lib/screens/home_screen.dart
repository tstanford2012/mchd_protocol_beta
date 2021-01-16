import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/calculator.dart';
import 'package:mchd_protocol_beta/screens/messaging/login.dart';
import 'package:mchd_protocol_beta/screens/pdf_test_page.dart';
import 'package:mchd_protocol_beta/screens/protocol_screen.dart';
import 'package:mchd_protocol_beta/screens/employee_sign_in.dart';
import 'package:mchd_protocol_beta/screens/employee_screen.dart';
import 'package:mchd_protocol_beta/screens/hr_forms_fog/hr_forms_fog.dart';
import 'auth.dart';
import 'root_screen.dart';

void main() {
  runApp(WillPopScope(
    onWillPop: () {
      return new Future.value(true);
    },
    child: MaterialApp(
      title: 'Flutter',
      home: HomeScreen(),
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCHD Employee',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Center(
              child: Text(
            'MCHD',
            style: TextStyle(color: Colors.white),
          )),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
        body: HomeLayout(),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final protocols = [
    "Adult Cardiac ALS",
    "Adult Behavioral ALS",
    "Adult Medical ALS",
    "Adult Trauma ALS",
    "Adult Respiratory ALS",
    "Adult Environmental ALS",
    "Adult Obstetrical ALS",
  ];
  final recentProtocols = [
    "Adult Medical ALS",
    "Adult Trauma ALS",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the apbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //show result based on the selection
    return Card(
      color: Colors.blue,
      shape: RoundedRectangleBorder(),
      child: Center(child: Text(query)),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? recentProtocols
        : protocols.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.timer),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _testGridView(context);
  }
}

Widget _testGridView(BuildContext context) {
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
                      'Treatment Protocols',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProtocolScreen(),
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
                      'Medicine calculator',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calc(),
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
                      'Messaging',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RootPage(auth: new Auth()),
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
                      'HR/Forms/Guidelines',
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HRandFOGScreen(),
                      ));
                }),
          ),
        ],
      ),
    ),
  );
}
