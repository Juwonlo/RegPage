import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:registration/extra.dart';
import 'package:registration/regPage.dart';
import 'package:registration/splash.dart';

void main() {
  runApp(MyApp());
  debugPaintSizeEnabled = false;
}

class MyApp extends StatelessWidget {
  // String _title = 'Radio Button Example';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/date': (context) => new LandingPage(),
        '/page': (context) => new Display(),
        '/gate': (context) => new Answerme(),
      },
      initialRoute: '/date',
    );
  }
}

enum Gender { Male, Female, Others }
