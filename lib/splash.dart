import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();

    new Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //color: Colors.lightBlue,
        child: Align(
          alignment: Alignment.center,
           child: Container(
             height: 244,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
            Image.asset('assets/feather.png'),
            Text(
              'Registration',
              style: TextStyle(
                color: Colors.indigoAccent[900],
                fontFamily: 'Pacifico',
                fontSize: 40,
              ),
            ),
              ],
            ),
        ),
        ),
      ),
    );
  }
}
