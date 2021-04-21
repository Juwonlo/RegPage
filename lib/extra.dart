//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

class Answerme extends StatefulWidget {
  @override
  _AnswermeState createState() => _AnswermeState();
}

class _AnswermeState extends State<Answerme> {
  Widget _call() {
    // var size = MediaQuery.of(context).size;
    // final double itemWidth = size.width - 10;

    return Container(
      width: MediaQuery.of(context).copyWith().size.width,
      height: 300,
      child: GridView.count(
        crossAxisCount: 1,
        shrinkWrap: true,
        childAspectRatio: 2 / 1.1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 8,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 7,
                  ),
                  child: Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.pink[900],
                        border: Border.all(color: Colors.pink[900], width: 3),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListTile(
                    title: Text(
                      'Juwon Airways',
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Fly Better'),
                    //trailing: Icon(Icons.grid_view),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Chip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              'F',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900]),
                            ),
                          ),
                          label: Text(
                            'Fly',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.grid_view,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[900]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _line() {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2)),
            child: InkWell(
              splashColor: Colors.pink[900],
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 5, left: 43),
                child: Text(
                  'M',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2)),
            child: InkWell(
              splashColor: Colors.pink[900],
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 5, left: 43),
                child: Text(
                  'N',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2)),
            child: InkWell(
              splashColor: Colors.pink[900],
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 5, left: 43),
                child: Text(
                  'B',
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
    return BackdropScaffold(
      headerHeight: 200,
      backLayerBackgroundColor: Colors.pink[900],
      frontLayerBackgroundColor: Colors.grey,
      frontLayerScrim: Colors.grey,
      appBar: BackdropAppBar(
          centerTitle: true,
          title: Text(
            'Records',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.pink[900]),
      backLayer: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: 500,
          height: 700,
          color: Colors.white,
        ),
      ),
      frontLayer: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   width: 150,
            //   height: 200,
            //   color: Colors.black26,
            // ),
            _call(),
            _line()
          ],
        ),
      ),
    );
  }
}
