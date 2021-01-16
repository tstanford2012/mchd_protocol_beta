import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/messaging/contacts.dart';
import 'package:mchd_protocol_beta/screens/messaging/groups.dart';
import 'package:mchd_protocol_beta/screens/auth.dart';
import 'package:mchd_protocol_beta/screens/employee_sign_in.dart';
import 'package:mchd_protocol_beta/screens/messaging/settings.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';

import 'Widgets/category_selector.dart';

class Messages extends StatefulWidget {
  final String currentUserId;

  Messages({Key key, @required this.currentUserId}) : super(key: key);
  @override
  _MessagesState createState() => _MessagesState(currentUserId: currentUserId);
}

class _MessagesState extends State<Messages> {
  _MessagesState({Key key, @required this.currentUserId});
  bool isLoading = false;
  List<Choice> choices = const <Choice>[
    const Choice(title: 'Settings', icon: Icons.settings),
    const Choice(title: 'Log out', icon: Icons.exit_to_app),
  ];
  final String currentUserId;

  void onItemMenuPress(Choice choice) {
    if (choice.title == 'Log out') {
      handleSignOut();
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Settings()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            }),
        title: Center(
            child: Text(
          'Chat',
          style: TextStyle(color: Colors.white),
        )),
        elevation: 0.0,
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: onItemMenuPress,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                    value: choice,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          choice.icon,
                          color: Colors.white,
                        ),
                        Container(
                          width: 10.0,
                        ),
                        Text(
                          choice.title,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ));
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
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
                      'Contacts',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ContactsScreen(currentUserId: currentUserId),
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
                      'Groups',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            groups(currentUserId: currentUserId),
                      ));
                }),
          ),
        ],
      ),
    );
  }

  Future<Null> handleSignOut() async {
    this.setState(() {
      isLoading = true;
    });

    await FirebaseAuth.instance.signOut();

    this.setState(() {
      isLoading = false;
    });

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage(auth: new Auth())),
        (Route<dynamic> route) => false);
  }
}
