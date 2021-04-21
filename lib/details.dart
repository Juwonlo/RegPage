import 'package:flutter/material.dart';
import 'package:registration/main.dart';
import 'package:registration/regPage.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
 

  String _dropDownValue = '';
  Gender _name = Gender.Male;
  //Color _colors = Colors.red[700];
  //Color _color = Colors.green[700];
  String firstnameText = '';
  String lastnameText = '';
  String numberText = '';
  String ageText = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Container(
          child: displayVisbility(),
        ),
      ),
    );
  }

  Widget displayVisbility() {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FullName =" +
                " " +
                lastnameText.toString() +
                ' ' +
                firstnameText.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blue[900],
            ),
          ),
          Text(
            'Phone NO =' + ' ' + '0' + numberText.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blue[900],
            ),
          ),
          Text(
            'Date Of Birth =' + ' ' + ageText.toString() + ' ' + 'Years Old',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blue[900],
            ),
          ),
          Text(
            'Gender =' + ' ' + _name.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blue[900],
            ),
          ),
          Text(
            'Title =' + ' ' + _dropDownValue.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blue[900],
            ),
          ),
        ],
      ),
    );
  }
}
