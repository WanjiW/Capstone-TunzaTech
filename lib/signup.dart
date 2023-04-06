import 'package:flutter/material.dart';
import 'package:practice_project/onboarding1.dart';
import 'package:practice_project/signin.dart';


void main(){
  runApp(const SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp ({super.key});

  static const String _title = 'SignUpPage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: const Center(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
                width: 365,
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 40,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Container(
                width: 365,
                child: Text("Welcome!",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 85, 85, 100),
                        fontSize: 20,
                        fontStyle: FontStyle.italic))),
            SizedBox(height: 55),
            Container(width: 365, child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
            )),
            SizedBox( height: 20),
            Container(width: 365, child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            )),
            SizedBox( height: 20),
            Container(width: 365, child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
            )),
            SizedBox( height: 20),
            Container(width: 365, child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            )),
            SizedBox(height: 15),
            // Container(
            //     width: 365,
            //     child: Divider(
            //       color: Colors.black26,
            //     )),
            SizedBox(height: 15),
            Container(
                // height: 45,
                // width: 180,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => (TutorialPageA())));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.black, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color.fromRGBO(116, 199, 243, 100)), fixedSize: MaterialStateProperty.all<Size>(Size(365, 44))))),
            Container(
                width: 365,
                child: ElevatedButton(onPressed: () {  },
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.asset('assets/images/google_icon.png', width: 20, height: 20,),
                      SizedBox(width: 9),
                      Text("Sign Up With Google",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16)),

                    ]), style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white), fixedSize: MaterialStateProperty.all<Size>(Size(365, 44))))),
            SizedBox(height: 10),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (SignIn())));
                },
                child: Container(
              child: RichText(text: TextSpan(children: <TextSpan>[ TextSpan(text: "Already have an account?",  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromRGBO(96, 91, 91, 100) )),
                TextSpan(text: " Sign In here!",  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color.fromRGBO(116, 199, 243, 100)))
              ],
                ))
            )),

          ],
        )
    );}

}