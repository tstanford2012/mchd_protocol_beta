import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mchd_protocol_beta/screens/messaging/messages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mchd_protocol_beta/screens/messaging/contacts.dart';
import 'package:mchd_protocol_beta/screens/home_screen.dart';
import 'auth.dart';
import 'dart:async';
import 'package:mchd_protocol_beta/screens/messaging/messages.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title, this.auth, this.onSignedIn}) : super(key: key);
  final String title;
  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override
  LoginPageState createState() => LoginPageState();
}

enum FormType { login, register }

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences prefs;
  FirebaseUser currentUser;

  bool isLoading = false;
  bool isLoggedIn = false;

  //Below is the animation code for the flutter icon
  //I plan to change this to a MCHD icon in the future.
  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 800));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  } //Icon animation code ends here

  void isSignedIn() async {
    this.setState(() {
      isLoading = true;
    });

    prefs = await SharedPreferences.getInstance();
    prefs?.setBool("isLoggedIn", true);

    this.setState(() {
      isLoading = false;
    });
  }

  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  FormType _formType = FormType.login;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if (_formType == FormType.login) {
          String userId = await widget.auth.signInWithEmailAndPassword(
              _email, _password);
          //firebaseUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text,password: passwordController.text)).user;
          Navigator.push(context, MaterialPageRoute(builder: (context) => Messages(currentUserId: userId)));
        } else {
          String userId = await widget.auth.createUserWithEmailAndPassword(
              _email, _password);
          print('Created Account $userId');
        }
        widget.onSignedIn();
      } catch (e) {
        print('Errors: $e');
      }
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
          'LOGIN',
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[IconButton(icon: Icon(Icons.search))],
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //Background MCHD image
          new Image(
            image: new AssetImage("assets/mchd_hq_2.png"),
            fit: BoxFit.fill,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  //logo that has an animation and a size that multiplies by 150
                  image: new AssetImage("assets/180.png"),
                  height: _iconAnimation.value * 150,
                  width: _iconAnimation.value * 150,
                  colorBlendMode: BlendMode.hardLight,
                ),
                new Form(
                  key: formKey,
                  child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.light,
                      primarySwatch: Colors.blueGrey,
                      inputDecorationTheme: new InputDecorationTheme(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 40.0, top: 0, right: 40.0, bottom: 40.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: buildInputs() + buildSubmitButtons(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      new TextFormField(
        validator: (value) => value.isEmpty ? 'Please enter an email' : null,
        onSaved: (value) => _email = value,
        textAlign: TextAlign.center,
        controller: emailController,
        style: new TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          labelText: "Enter Email",
        ),
        keyboardType: TextInputType.emailAddress,
      ),
      new TextFormField(
        validator: (value) => value.isEmpty ? 'Please enter a password' : null,
        onSaved: (value) => _password = value,
        textAlign: TextAlign.center,
        controller: passwordController,
        style: new TextStyle(color: Colors.white),
        decoration: new InputDecoration(
          labelText: "Enter Password",
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
      ),
    ];
  }

  List<Widget> buildSubmitButtons() {
    if (_formType == FormType.login) {
      return [
        new Padding(
          padding: const EdgeInsets.only(top: 10.0),
        ),
        new MaterialButton(
            color: Colors.grey,
            textColor: Colors.black,
            splashColor: Colors.blue,
            child: new Text('Sign in'),
            onPressed: () {
              try {
                validateAndSubmit();
              } catch (e) {
                print('There was an error $e');
              }
            }),
        new FlatButton(
          color: Colors.grey,
          child: new Text('Create an Account'),
          onPressed: moveToRegister,
        )
      ];
    } else {
      return [
        new Padding(
          padding: const EdgeInsets.only(top: 10.0),
        ),
        new MaterialButton(
            color: Colors.grey,
            textColor: Colors.black,
            splashColor: Colors.blue,
            child: new Text('Create an Account'),
            onPressed: () {
              try {
                validateAndSubmit();
              } catch (e) {
                print('Errors $e');
              }
            }),
        new FlatButton(
          color: Colors.grey,
          child: new Text('Have an Account? Login'),
          onPressed: moveToLogin,
        )
      ];
    }
  }

  Future<void> signInWithEmailPassword() async {
    FirebaseUser firebaseUser;
    prefs = await SharedPreferences.getInstance();

    this.setState(() {
      isLoading = true;
    });

    try {
      firebaseUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text))
          .user;
    } catch (e) {
      print(e.toString());
    } finally {
      if (firebaseUser != null) {
        final QuerySnapshot result = await Firestore.instance
            .collection('users')
            .where('id', isEqualTo: firebaseUser.uid)
            .getDocuments();
        final List<DocumentSnapshot> documents = result.documents;
        if (documents.length == 0) {
          // Update data to server if new user
          Firestore.instance
              .collection('users')
              .document(firebaseUser.uid)
              .setData({
            'nickname': firebaseUser.displayName,
            'photoUrl': firebaseUser.photoUrl,
            'id': firebaseUser.uid,
            'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
            'chattingWith': null
          });

          // Write data to local
          currentUser = firebaseUser;
          await prefs.setString('id', currentUser.uid);
          await prefs.setString('nickname', currentUser.displayName);
          await prefs.setString('photoUrl', currentUser.photoUrl);
        } else {
          // Write data to local
          await prefs.setString('id', documents[0]['id']);
          await prefs.setString('nickname', documents[0]['nickname']);
          await prefs.setString('photoUrl', documents[0]['photoUrl']);
          await prefs.setString('aboutMe', documents[0]['aboutMe']);
        }
        Fluttertoast.showToast(msg: "Sign in success");
        this.setState(() {
          isLoading = false;
        });

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Messages(currentUserId: firebaseUser.uid)));
      } else {
        Fluttertoast.showToast(msg: "Sign in fail");
        this.setState(() {
          isLoading = false;
        });
      }
      var status = prefs.getBool('isLoggedIn') ?? false;
      print(status);
      runApp(MaterialApp(
          home: status == true
              ? LoginPage()
              : Messages(currentUserId: firebaseUser.uid)));
    }
  }
}
