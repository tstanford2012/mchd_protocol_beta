import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:numberpicker/numberpicker.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(BehavioralAssesAdultALSPDFScreen());
}

class BehavioralAssesAdultALSPDFScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _BehavioralAssesAdultALSPDFScreenState();
}

class _BehavioralAssesAdultALSPDFScreenState
    extends State<BehavioralAssesAdultALSPDFScreen> {
  bool _isLoading = false, _isInit = true;
  PDFDocument document;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFromAssets();
    // this is where you load your asssets
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
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
              onPressed: () {},
            ) //IconButton
          ], //,Widget>[]
        ), //Appbar
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: _isLoading
                    ? Center(
                        child:
                            CircularProgressIndicator(), //Shows indicator if _isLoading is true
                      ) //Center
                    : PDFViewer(
                        document: document,
                      ), //PDFViewer
              ), //Center
            ), //Expanded
          ], //<Widget>[]
        ), //Column
      ), //Scaffold
    ); //MaterialApp
  }

  Future<PDFDocument> loadFromAssets() async {
    try {
      setState(() {
        _isLoading = true; //show loading
      });
      document = await PDFDocument.fromAsset(
          "assets/PDFs/adult_guidelines/behavioral/behavioral-assessment.pdf");
      setState(() {
        _isLoading = false; //remove loading
      });
      return document;
    } catch (err) {
      print('Caught error: $err');
    } //catch
  } //Future
}
