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

  Gender _name = Gender.Male;

  Color _colors = Colors.red[700];

  void Change() {
    Color _color = Colors.green[700];

    String fisrtnameText = firstname.text;
    String lastnameText = lastname.text;
    String numberText = number.text;

    if (fisrtnameText == 'b' && lastnameText == 'i' && numberText == '0') {
      print(displayVisbility());
      //print(_color);
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => Answerme()));
    } else {
      final snackBar = SnackBar(
        content: Text('Complete Details!'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Widget displayVisbility() {
    
    return Container(
      child: Column(
        children: [
          Text("FullName =" firstnameText +' ' + lastnameText),
          Text('')
        ],
      ),
    );
  }

  Widget collectDetail() {
    return Container(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: firstname,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'FirstName',
              labelStyle: TextStyle(color: Colors.lightBlue),
              icon: Icon(Icons.create, color: Colors.red),
            ),
          ),
          TextField(
            controller: lastname,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'LastName',
                labelStyle: TextStyle(color: Colors.lightBlue),
                icon: Icon(Icons.create, color: Colors.red)),
          ),
          TextField(
            controller: number,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.lightBlue),
                icon: Icon(
                  Icons.phone,
                  color: Colors.green,
                )),
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
              setState(() {
                Change();
              });
            },
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: _colors,
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
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 10, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              collectDetail(),
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
