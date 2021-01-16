import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/employee_sign_in.dart';
import 'auth.dart';
import 'package:mchd_protocol_beta/screens/messaging/messages.dart';

class RootPage extends StatefulWidget {
  final BaseAuth auth;
  RootPage({this.auth});


  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus{
  notSignedIn,
  signedIn
}
class _RootPageState extends State<RootPage> {

  AuthStatus _authStatus = AuthStatus.notSignedIn;

  get currentUser => null;

  void initState() { 
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        _authStatus = userId == null ? AuthStatus.notSignedIn:AuthStatus.signedIn;
      });
    });
  }

  void _signedin(){
    setState(() {
      authStatus = AuthStatus.signedIn;
    });
  }

@override
  Widget build(BuildContext context) {
    switch (_authStatus){
      case AuthStatus.notSignedIn:
      return new LoginPage(auth: widget.auth,
      onSignedIn: _signedin);
      case AuthStatus.signedIn:
        return new Messages(currentUserId: currentUser);
        break;
    }
  }
}
