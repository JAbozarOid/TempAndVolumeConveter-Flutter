import 'package:flutter/material.dart';
import 'screens/temp_Volume_screen.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: TempVolumeScreen(),
          appBar: AppBar(
        title: Text('Temp and Volume Converter'),
      )),
    );
  }
}
