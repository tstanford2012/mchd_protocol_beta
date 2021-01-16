import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mchd_protocol_beta/screens/calculator/medCalc.dart';

class Calc extends StatefulWidget {
  Calc({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Calc createState() => new _Calc();
}

class _Calc extends State<Calc> {
  String output = "0";
  String _output = "0";
  double num1 = 0.0;

  void _sendData(BuildContext context) {
    String textToSend = _output;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MedCalc(
            text: textToSend,
          ),
        ));
  }

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
    } else if (buttonText == "ENTER") {
      _sendData(context);
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(0);
    });
  }

  Widget buildButton(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: new Text(
          buttonText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        onPressed: () => {buttonPressed(buttonText)},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Enter Weight LBS"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
                alignment: Alignment.bottomRight,
                padding: new EdgeInsets.symmetric(
                  vertical: 100.0,
                  horizontal: 12.0,
                ),
                child: new Text(output,
                    style: new TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ))),
            new Expanded(
              child: Divider(),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton("CLEAR"),
                    buildButton("0"),
                    buildButton("ENTER"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
