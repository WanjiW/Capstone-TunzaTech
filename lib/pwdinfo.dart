import 'package:flutter/material.dart';
import 'package:practice_project/homepage.dart';
import 'package:practice_project/importantcontacts.dart';
import 'bottomnavigationbar.dart';

void main() => runApp(const PwDInfoPage());

class PwDInfoPage extends StatefulWidget {
  const PwDInfoPage({super.key});

  static const String _title = 'PwDInfoPage';

  @override
  State<PwDInfoPage> createState() => _PwDInfoPageState();
}

class _PwDInfoPageState extends State<PwDInfoPage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: PwDInfoPage._title,
        routes: {
          '/homepage': (context) => HomePage(),
          '/pwdinfo': (context) => Scaffold(
            body: SingleChildScrollView(child: MyStatefulWidget()),
            bottomNavigationBar: MyBottomNavigationBar(currentIndex: _currentIndex, onTap: _onItemTapped),
          ),
          '/importantcontacts': (context) => ImportantContactsPage(),
        },
        home: Scaffold(
          appBar: AppBar(
              toolbarHeight: 120,
              leadingWidth: 90,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: 100,
                          height: 100,
                          child: Icon(Icons.arrow_back_ios_new_rounded,
                              color: Colors.black, size: 22))))),
          body: SingleChildScrollView(child: MyStatelessWidget()),
          bottomNavigationBar: MyBottomNavigationBar(
              currentIndex: _currentIndex, onTap: _onItemTapped),
        ));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Container(
          padding: EdgeInsets.fromLTRB(45, 3, 45, 00),
          child: Text("Vital Information",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
        )
      ]),
      Row(children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.fromLTRB(45, 3, 45, 00),
          child: Text(
              "This is the information you gave us on your loved one with dementia. We put it here so you can have all the information in one place!",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(0, 85, 85, 100))),
        ))
      ]),
      SizedBox(height: 40),
      Row(children: [
        Container(
          padding: EdgeInsets.fromLTRB(45, 3, 45, 00),
          child: Text("GENERAL INFORMATION",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(29, 174, 239, 100))),
        )
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 10, 00),
            child: Icon(Icons.document_scanner)),
        Container(
            padding: EdgeInsets.fromLTRB(0, 6, 45, 00),
            child: Text("Alzheimer's Disease",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 10, 00),
            child: Icon(Icons.accessibility_rounded)),
        Container(
            padding: EdgeInsets.fromLTRB(0, 6, 45, 00),
            child: Text("Christopher Karue",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 10, 00),
            child: Icon(Icons.cake_rounded)),
        Container(
            padding: EdgeInsets.fromLTRB(0, 6, 45, 00),
            child: Text("11th September 1950",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 10, 00),
            child: Icon(Icons.group)),
        Container(
            padding: EdgeInsets.fromLTRB(0, 6, 45, 00),
            child: Text("Next of Kin: Mary Karue",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ]),
      SizedBox(height: 20),
      Row(children: [
        Container(
          padding: EdgeInsets.fromLTRB(45, 3, 45, 00),
          child: Text("PRE-EXISTING CONDITIONS",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(29, 174, 239, 100))),
        )
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
        Container(
            padding: EdgeInsets.fromLTRB(10, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
        Container(
            padding: EdgeInsets.fromLTRB(10, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
      ]),
      SizedBox(height: 40),
      Row(children: [
        Container(
          padding: EdgeInsets.fromLTRB(45, 3, 45, 00),
          child: Text("MEDICAL INFORMATION",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(29, 174, 239, 100))),
        )
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 10, 00),
            child: Icon(Icons.local_hospital)),
        Container(
            padding: EdgeInsets.fromLTRB(0, 6, 45, 00),
            child: Text("Nairobi Hospital, Ngong Rd",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 10, 00),
            child: Icon(Icons.medical_services_rounded)),
        Container(
            padding: EdgeInsets.fromLTRB(0, 6, 45, 00),
            child: Text("Dr. C Karue",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ]),
      SizedBox(height: 40),
      Row(children: [
        Container(
          padding: EdgeInsets.fromLTRB(45, 3, 45, 00),
          child: Text("CURRENT MEDICATION",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(29, 174, 239, 100))),
        )
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
        Container(
            padding: EdgeInsets.fromLTRB(10, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
      ]),
      SizedBox(height: 10),
      Row(children: [
        Container(
            padding: EdgeInsets.fromLTRB(45, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
        Container(
            padding: EdgeInsets.fromLTRB(10, 3, 0, 00),
            child: Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(197, 252, 128, 0.3),
                    borderRadius: BorderRadius.circular(15)))),
      ]),
      SizedBox(height: 20)
    ]);
  }
}
