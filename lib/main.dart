import 'package:flutter/material.dart';
import 'package:practice_project/signin.dart';
import 'package:practice_project/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(SplashPage());
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const String _title = 'Splash Screen';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatelessWidget(),
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
      constraints: BoxConstraints.expand(),
      height: 400,
      width: 300,
      decoration: BoxDecoration(
          // color: Colors.black.withOpacity(0.4),
          image: DecorationImage(
              image: AssetImage("assets/images/shaking_hands.jpeg"),
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(0, 0, 0, 0.5), BlendMode.srcOver),
              fit: BoxFit.cover)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80),
            Text("TUNZATECH",
                style: TextStyle(
                    fontSize: 52,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Text("taking care of the people who take care of us",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(29, 174, 239, 60),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center),
            SizedBox(height: 80),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (SignUp())));
                },
                child: Text("Sign Up", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    // remember: low opacity = less transparent!
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(11, 19, 43, 10)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(235, 44)))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (SignIn())));
                },
                child: Text("Sign In", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(116, 199, 243, 10)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(235, 44))))
          ]),
    );
  }
}
