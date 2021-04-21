import 'package:flutter/material.dart';
import 'package:registration/extra.dart';

class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  void _showPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Scaffold(
              body: Center(
                child: Image.asset('assets/enny.jpg'),
              ),
            )));
  }

  Widget _last() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onDoubleTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Answerme())),
        child:Icon(
          Icons.ac_unit,
          size: 25,
        ),
        ),
        GestureDetector(
          onTap: () {
            _showPage(context);
          },
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/enny.jpg'),
            //backgroundColor: Colors.pink[900],
          ),
        ),
      ],
    );
  }

  Widget _title() {
    return Container(
      height: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hi Juwon',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Welcome to Futrer Homes.',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _name() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Rooms',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ),
        Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.cyan[200], borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Add',
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyan,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _listRoom() {
    return Container(
      height: MediaQuery.of(context).copyWith().size.height / 1 - 280,
      //width: MediaQuery.of(context).copyWith().size.width/1 -50,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 22, bottom: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 27,
                  ),
                  Text(
                    'Living Room',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '5 Devices',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 22, bottom: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 27,
                  ),
                  Text(
                    'Kitchen',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '4 Devices',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.indigo[100],
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 22, bottom: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 27,
                  ),
                  
                  Text(
                    'Office',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '10 Devices',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 22, bottom: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 27,
                  ),
                  Text(
                    'Bedroom',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '6 Devices',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 22, bottom: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 27,
                  ),
                  Text(
                    'Bathroom',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '7 Devices',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 22, bottom: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
         CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 27,
                  ),
                  Text(
                    'Dining Room',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '4 Devices',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
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
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _last(),
              _title(),
              _name(),
              _listRoom(),
            ],
          ),
        ),
      ),
    );
  }
}
