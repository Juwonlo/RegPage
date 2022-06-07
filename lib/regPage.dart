
import 'package:flutter/material.dart';
import 'package:registration/details.dart';
//import 'package:registration/extra.dart';
import 'package:registration/ground.dart';
import 'package:registration/main.dart';
import 'package:flutter/rendering.dart';
//import 'package:fluttertoast/fluttertoast.dart';

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

  Gender? _name = Gender.Male;
  String? _dropDownValue = '';
  //Color _colors = Colors.red[700];
  //Color _color = Colors.green[700];
  String firstnameText = '';
  String lastnameText = '';
  String numberText = '';
  String ageText = '';
  FloatingActionButtonLocation _location =
      FloatingActionButtonLocation.endDocked;

  Color? _pressAttention = Colors.red[700];

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
    } else {
      _pressAttention = _pressAttention == Colors.red[700]
          ? Colors.green[700]
          : Colors.green[700];
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Details()));
    }
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
          Row(children: [
            Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
              child: Icon(Icons.person_pin_circle_outlined,
                  color: Colors.indigo[900], size: 25),
            ),
            Container(
              width: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.grey),
              ),
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
                          _dropDownValue!,
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
                  onChanged: (dynamic val) {
                    setState(
                      () {
                        _dropDownValue = val;
                      },
                    );
                  },
                ),
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 15,
                ),
                child: Icon(Icons.people_outlined,
                    color: Colors.brown[900], size: 25),
              ),
              Container(
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          'Gender',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.indigo,
                          size: 40,
                        ),
                      ]),
                      ListTile(
                        title: Text(
                          'Male',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 17),
                        ),
                        leading: Radio(
                            activeColor: Colors.red,
                            value: Gender.Male,
                            groupValue: _name,
                            onChanged: (Gender? value) {
                              setState(() {
                                _name = value;
                              });
                            }),
                      ),
                      ListTile(
                        title: Text(
                          'Female',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 17),
                        ),
                        leading: Radio(
                            activeColor: Colors.red,
                            value: Gender.Female,
                            groupValue: _name,
                            onChanged: (Gender? value) {
                              setState(() {
                                _name = value;
                              });
                            }),
                      ),
                      ListTile(
                        title: Text(
                          'Others',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 17),
                        ),
                        leading: Radio(
                            activeColor: Colors.red,
                            value: Gender.Others,
                            groupValue: _name,
                            onChanged: (Gender? value) {
                              setState(() {
                                _name = value;
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Change();
              //     _pressAttention = _pressAttention == Colors.red[700]
              //         ? Colors.green[700]
              //         : Colors.green[700];
              //         Navigator.push(
              // context, MaterialPageRoute(builder: (context) => Details()));
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

  Widget _upper() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [Colors.indigo[900]!, Colors.cyan,]),
      ),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        // child: Text('j5A',
        // style: TextStyle(
        //   fontFamily: 'Pacifico',
        //   color: Colors.indigo[900],
        // ),
        // ),
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
              _upper(),
              collectDetail(),
              //middle(),
              //displayVisbility(),
            ],
          ),
        ),
        floatingActionButtonLocation: _location,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Rooms()));
            },
            child: Icon(
              Icons.menu_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.cyan
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.cyan,
              shape: CircularNotchedRectangle(),
              child: Container(
                height: 50,
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

/////////////widget display
//  Widget displayVisbility() {
//     return Container(
//       height: 300,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "FullName =" +
//                 " " +
//                 lastnameText.toString() +
//                 ' ' +
//                 firstnameText.toString(),
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.blue[900],
//             ),
//           ),
//           Text(
//             'Phone NO =' + ' ' + '0' + numberText.toString(),
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.blue[900],
//             ),
//           ),
//           Text(
//             'Date Of Birth =' + ' ' + ageText.toString() + ' ' + 'Years Old',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.blue[900],
//             ),
//           ),
//           Text(
//             'Gender =' + ' ' + _name.toString(),
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.blue[900],
//             ),
//           ),
//           Text(
//             'Title =' + ' ' + _dropDownValue.toString(),
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.blue[900],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
