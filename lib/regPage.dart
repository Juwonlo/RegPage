//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:registration/extra.dart';
import 'package:registration/main.dart';
import 'package:flutter/rendering.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  //bool isColor = true;
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController number = new TextEditingController();
  TextEditingController age = new TextEditingController();

  Gender _name = Gender.Male;
  String _dropDownValue = '';
  //Color _colors = Colors.red[700];
  //Color _color = Colors.green[700];
  String firstnameText = '';
  String lastnameText = '';
  String numberText = '';
  String ageText = '';

  Color _pressAttention = Colors.red[700];

  void Change() {
    firstnameText = firstname.text;
    lastnameText = lastname.text;
    numberText = number.text;
    ageText = age.text;

    if (firstnameText == '' ||
        lastnameText == '' ||
        numberText == '' ||
        ageText == '') {
      final snackBar = SnackBar(
        content: Text('Complete Your Details!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      //print(_color);
      //Navigator.push(
      //context, MaterialPageRoute(builder: (context) => Answerme()));
      //
    } else {
      setState(() {
        displayVisbility();
      });
    }
  }

  Widget displayVisbility() {
    return Container(
      height: 300,
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
            'Date Of Birth =' + ' ' + ageText.toString(),
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

  Widget collectDetail() {
    return Container(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: firstname,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Please Provide Your Name',
              hintStyle: TextStyle(
                  //fontFamily: 'Pacifico'
                  ),
              labelText: 'FirstName',
              labelStyle: TextStyle(color: Colors.lightBlue),
              icon: Icon(Icons.perm_identity, color: Colors.red),
            ),
          ),
          TextField(
            controller: lastname,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Please Provide Your SurName',
                hintStyle: TextStyle(
                    //fontFamily: 'Pacifico'
                    ),
                labelText: 'LastName',
                labelStyle: TextStyle(color: Colors.lightBlue),
                icon: Icon(Icons.perm_identity, color: Colors.red)),
          ),
          TextField(
            controller: number,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixText: '+234',
                prefixStyle: TextStyle(color: Colors.black87),
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.lightBlue),
                icon: Icon(
                  Icons.phone_outlined,
                  color: Colors.green,
                )),
          ),
          TextFormField(
            controller: age,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Please Provide Your Age',
              hintStyle: TextStyle(fontFamily: 'Pacifico'),
              labelText: 'Date Of Birth',
              labelStyle: TextStyle(color: Colors.lightBlue),
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
            ),
            child: Container(
              width: 300,
              height: 67,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: DropdownButton(
                  elevation: 15,
                  hint: _dropDownValue == null
                      ? Text(
                          'Title',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        )
                      : Text(
                          _dropDownValue,
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                  underline: Container(
                    height: 2,
                    color: Colors.grey,
                  ),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(
                    color: Colors.blue[700],
                  ),
                  items: ['MR', 'MRS', 'MASTER', 'MISS'].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        _dropDownValue = val;
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Gender ;',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      title: Text(
                        'Male',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 17),
                      ),
                      leading: Radio(
                          activeColor: Colors.red,
                          value: Gender.Male,
                          groupValue: _name,
                          onChanged: (Gender value) {
                            setState(() {
                              _name = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: Text(
                        'Female',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 17),
                      ),
                      leading: Radio(
                          activeColor: Colors.red,
                          value: Gender.Female,
                          groupValue: _name,
                          onChanged: (Gender value) {
                            setState(() {
                              _name = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: Text(
                        'Others',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 17),
                      ),
                      leading: Radio(
                          activeColor: Colors.red,
                          value: Gender.Others,
                          groupValue: _name,
                          onChanged: (Gender value) {
                            setState(() {
                              _name = value;
                            });
                          }),
                    )
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Change();
              _pressAttention = _pressAttention == Colors.red[700] ? 
                    Colors.green[700] : 
                    Colors.green[700];
            },
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: _pressAttention,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 10, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              collectDetail(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 13),
                    child: Text(
                      'YOUR DETAILS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey),
                ),
              ),
              displayVisbility(),
            ],
          ),
        ),
      ),
    );
  }
}

// to change the color of a box ==
// Listener(
//   child: Container(
//     width: 100,
//     height: 50,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(12),
//       color: isColor == true ? Colors.red[700] : Colors.green[700],
//     ),
//     child: Align(
//       alignment: Alignment.center,
//       child: Text(
//         'Submit',
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             color: Colors.white),
//       ),
//     ),
//   ),
//   onPointerDown: (event) => setState(() {
//     isColor = true;
//   }),
//   onPointerUp: (event) => setState(() {
//     isColor = false;
//   }),
// ),
