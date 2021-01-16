import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  runApp(PDFTestPage());
}

class PDFTestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _pdfTestPageState();
}

class _pdfTestPageState extends State<PDFTestPage> {
  String assetPDFPath = "";
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    getFileFromAsset("assets/PDFs/calendars_2020.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
      });
    });
  }

  Future<File> getFileFromAsset(String asset) async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    File tempFile = File('$tempPath/calendars_2020.pdf');
    ByteData bd = await rootBundle.load('assets/PDFs/calendars_2020.pdf');
    await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true);
    return tempFile;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
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
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                  child: MaterialButton(
                child: Text('Open from Asset'),
                onPressed: () {
                  getFileFromAsset(assetPDFPath);
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class PDFViewPage extends StatefulWidget {
  final String path;

  const PDFViewPage({Key key, this.path}) : super(key: key);
  @override
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  bool pdfReady = false;
  @override
  Widget build(BuildContext context) {
    var document;
    return Scaffold(
        appBar: AppBar(
          title: Text("My Document"),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: <Widget>[
            PDFViewer(
              document: document,
            ),
            !pdfReady
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Offstage()
          ],
        ));
  }
}
