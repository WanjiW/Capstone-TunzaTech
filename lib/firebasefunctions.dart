// import 'dart:js';
//
// import 'package:firebase_auth/firebase_auth.dart';
//
// import 'package:flutter/material.dart';
// import 'package:practice_project/homepage.dart';
// import 'package:practice_project/signin.dart';
//
// final FirebaseAuth _auth = FirebaseAuth.instance;
// TextEditingController emailController = TextEditingController();
// TextEditingController passwordController = TextEditingController();
//
//
// @override
// void initState() {
//   initState();
//   getUser().then((user) {
//     if (user != null) {
//       HomePage();
//     }
//   });
// }
//
// Future<User?> getUser() async {
//   return await _auth.currentUser;
// }
//
// void signUpWithEmail(email, password) async {
//   // marked async
//   User ?user;
//   try {
//     user = (await _auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     )) as User;
//   } catch (e) {
//     print(e.toString());
//   } finally {
//     if (user != null) {
//       Navigator.push(context as BuildContext,
//           MaterialPageRoute(builder: (context) => (SignIn())));
//       // sign in successful!
//       // ex: bring the user to the home page
//     } else {
//       Text("sign in unsuccessful");
//       // ex: prompt the user to try again
//     }
//   }
// }
//
// void signInWithEmail() async {
//   // marked async
//   User ?user;
//   try {
//     user = (await _auth.signInWithEmailAndPassword(
//         email: emailController.text, password: passwordController.text)) as User;
//   } catch (e) {
//     print(e.toString());
//   } finally {
//     if (user != null) {
//       // sign in successful!
//       // ex: bring the user to the home page
//     } else {
//       // sign in unsuccessful
//       // ex: prompt the user to try again
//     }
//   }
// }