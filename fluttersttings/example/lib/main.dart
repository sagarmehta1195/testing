import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:fluttersttings/fluttersttings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  // @override
  // void initState() {
  //   super.initState();
  //   // initPlatformState();
  //   //
  //   openSettingPage();
  // }

  // Platform messages are asynchronous, so we initialize in an async method.
  // Future<void> initPlatformState() async {
  Future<void> openSettingPage() async {
    // String platformVersion;
    bool isSettingOpen;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      // platformVersion = await Fluttersttings.platformVersion;
      isSettingOpen = await Fluttersttings.openPage("SETTING");
    } on PlatformException {
      // platformVersion = 'Failed to get platform version.';
      print('Failed to get platform version.');
    }
    print('Result= $isSettingOpen');
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    // setState(() {
    //   _platformVersion = platformVersion;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              openSettingPage();
            },
            child: Text("Open Setting"),
          ),
        ),
      ),
    );
  }
}
