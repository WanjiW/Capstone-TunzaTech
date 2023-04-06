import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project/importantcontacts.dart';
import 'package:practice_project/profile.dart';
import 'package:practice_project/bottomnavigationbar.dart';
import 'package:practice_project/pwdinfo.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String _title = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 1;

  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: HomePage._title,
        // initialRoute: '/homepage',
        routes: {
          '/pwdinfo': (context) => PwDInfoPage(),
          '/homepage': (context) => Scaffold(
            body: SingleChildScrollView(child: MyStatefulWidget()),
            bottomNavigationBar: MyBottomNavigationBar(currentIndex: _currentIndex, onTap: _onItemTapped),
          ),
          '/importantcontacts': (context) => ImportantContactsPage(),
        },
        home: Scaffold(
          // appBar: AppBar(title: const Text(_title)),
          body: SingleChildScrollView(child: MyStatefulWidget()),
          bottomNavigationBar: MyBottomNavigationBar(currentIndex: _currentIndex, onTap: _onItemTapped),
          ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // code from the IOT device will go here
  //default is false = no alert
  bool _alertCaregiverO = false;
  bool _alertCaregiverL = false;
  bool _alertCaregiverH = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(146, 211, 245, 0.9),
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (ProfilePage())));
              },
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 80,
                      height: 140,
                      child: Icon(Icons.person_rounded,
                          color: Colors.black, size: 33)))),
          SizedBox(height: 8),
          Container(
              width: 365,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(CupertinoIcons.sparkles,
                      color: Colors.yellow, size: 45))),

          SizedBox(height: 10),
          Container(
              width: 365,
              child: Text("Tip Of The Day",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))),
          Container(
              width: 365,
              child: Text(
                  "Lorem ipsum dolor sit amet consectetur - lorem ipsum dolor sit amet consectetur!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic))),

          // part that reacts to the monitoring of the sensor data
          SizedBox(height: 65),
          Container(
            height: 480,
            width: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
            ),
            child: Column(
              children: [
                // orientation

                SizedBox(height: 50),
                Visibility(
                    visible: !_alertCaregiverO,
                    child: Container(
                        height: 100,
                        width: 365,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(203, 243, 152, 0.3),
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(8),
                                left: Radius.circular(8))),
                        child: Row(children: [
                          GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  // the ! changes it from false to true
                                  _alertCaregiverO = !_alertCaregiverO;
                                });
                              },
                              child: Container(
                                  width: 65,
                                  child: Icon(Icons.man,
                                      color: Colors.black, size: 40))),
                          Container(
                              child: Column(children: [
                            SizedBox(height: 26),
                            Text("ORIENTATION",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text("Upright                 ",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300))
                          ])),
                          Container(
                            padding: EdgeInsets.fromLTRB(110, 0, 0, 0),
                            child: Icon(Icons.check_box_rounded,
                                color: Colors.black, size: 50),
                          )
                        ]))),

                //ORIENTATION ALERT!
                Visibility(
                  visible: _alertCaregiverO,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(70, 5, 00, 00),
                      height: 100,
                      width: 365,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 0, 0, 0.7),
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(8),
                              left: Radius.circular(8))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      // the ! changes it from false to true
                                      _alertCaregiverO = !_alertCaregiverO;
                                    });
                                  },
                                  child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(60, 0, 00, 00),
                                      child: Icon(Icons.man,
                                          color: Colors.white, size: 40))),
                              Container(
                                  child: Icon(Icons.dangerous_outlined,
                                      color: Colors.white, size: 40)),
                            ]),
                            Row(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 5, 00, 00),
                                  child: Text("CHRISTOPHER HAS FALLEN DOWN",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)))
                            ])
                          ])),
                ),

// ------------------------------------------------------------------------------------------------------------------------------------

                // LOCATION
                SizedBox(height: 30),
                Visibility(
                    visible: !_alertCaregiverL,
                    child: Container(
                        height: 100,
                        width: 365,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(203, 243, 152, 0.3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(children: [
                          GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  // the ! changes it from false to true
                                  _alertCaregiverL = !_alertCaregiverL;
                                });
                              },
                              child: Container(
                                  width: 65,
                                  child: Icon(Icons.location_history,
                                      color: Colors.black, size: 40))),
                          Container(
                              child: Column(children: [
                            SizedBox(height: 26),
                            Container(
                                width: 200,
                                child: Text("LOCATION",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            SizedBox(height: 5),
                            Container(
                                width: 200,
                                child: Text("Within Safe Zone",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300)))
                          ])),

                          //NB: add map plugin here!
                          Container(
                              width: 100,
                              height: 365,
                              child: Image.asset('assets/images/map.jpg')),
                        ]))),

                // LOCATION ALERT
                // SizedBox(height: 30),
                Visibility(
                  visible: _alertCaregiverL,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(45, 5, 00, 00),
                      height: 100,
                      width: 365,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 0, 0, 0.7),
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(8),
                              left: Radius.circular(8))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      // the ! changes it from false to true
                                      _alertCaregiverL = !_alertCaregiverL;
                                    });
                                  },
                                  child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(90, 0, 00, 00),
                                      child: Icon(Icons.location_history,
                                          color: Colors.white, size: 40))),
                              Container(
                                  child: Icon(Icons.dangerous_outlined,
                                      color: Colors.white, size: 40)),
                            ]),
                            Row(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 5, 00, 00),
                                  child: Text(
                                      "CHRISTOPHER HAS LEFT THE SAFE ZONE",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)))
                            ])
                          ])),
                ),

// --------------------------------------------------------------------------------------------------------------------------------------
                // HEART RATE
                SizedBox(height: 30),
                Visibility(
                    visible: !_alertCaregiverH,
                    child: Container(
                        height: 100,
                        width: 365,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(203, 243, 152, 0.3),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(children: [
                          GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  // the ! changes it from false to true
                                  _alertCaregiverH = !_alertCaregiverH;
                                });
                              },
                              child: Container(
                                  width: 65,
                                  child: Icon(Icons.monitor_heart_rounded,
                                      color: Colors.black, size: 40))),
                          Container(
                              child: Column(children: [
                            SizedBox(height: 26),
                            Container(
                                width: 200,
                                child: Text("HEART RATE",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            SizedBox(height: 5),
                            Container(
                                width: 200,
                                child: Text("Within Safe Range",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300)))
                          ])),
                          Container(
                              child: Text("80",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(width: 5),
                          Container(
                              child: Text("bpm",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)))
                        ]))),

                // HEART RATE ALERT
                Visibility(
                  visible: _alertCaregiverH,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(45, 5, 00, 00),
                      height: 100,
                      width: 365,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 0, 0, 0.7),
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(8),
                              left: Radius.circular(8))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      // the ! changes it from false to true
                                      _alertCaregiverH = !_alertCaregiverH;
                                    });
                                  },
                                  child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(90, 0, 00, 00),
                                      child: Icon(Icons.monitor_heart_rounded,
                                          color: Colors.white, size: 40))),
                              Container(
                                  child: Icon(Icons.dangerous_outlined,
                                      color: Colors.white, size: 40)),
                            ]),
                            Row(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 5, 00, 00),
                                  child: Text(
                                      "CHRISTOPHER'S HEART RATE IS HIGH",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)))
                            ])
                          ])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
