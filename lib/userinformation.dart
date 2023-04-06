import 'package:flutter/material.dart';
import 'package:practice_project/homepage.dart';

void main() => runApp(const UserInformation());

class UserInformation extends StatelessWidget {
  const UserInformation({super.key});

  static const String _title = 'UserInformation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: SingleChildScrollView(child: MyStatelessWidget()),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 90),
      Container(
          width: 365,
          child: Text("User Information",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.bold))),
      SizedBox(height: 10),
      Container(
          width: 365,
          child: Text(
              "This section is to collect some data about your loved one with dementia. This will help us "
              "display the information for you so you don't forget! None of the data will be used unethically.",
              style: TextStyle(
                  color: Color.fromRGBO(0, 85, 85, 100),
                  fontSize: 15,
                  fontStyle: FontStyle.italic))),
      SizedBox(height: 55),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Firstname',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Surname',
            ),
          )),
          SizedBox(height: 20),
          Container(
              width: 365,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Recovery Email / Phone Number',
                ),
              )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Date of birth',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type of dementia (diagnosis)',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText:
                  'Pre-existing conditions (separate entries with a comma)',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Primary Hospital',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name of doctor',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Current medication (separate entries with a comma)',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Emergency contact 1',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Emergency contact 2',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Emergency contact 3',
            ),
          )),
      SizedBox(height: 20),
      Container(
          width: 365,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name of Next of Kin',
            ),
          )),
      SizedBox(height: 25),
      Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (HomePage())));
              },
              child: Text(
                "Save & Finish",
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(116, 199, 243, 100)),
                  fixedSize: MaterialStateProperty.all<Size>(Size(365, 44))))),
      SizedBox(height: 20),
    ]));
  }
}
