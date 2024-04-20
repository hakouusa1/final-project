// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, use_build_context_synchronously, library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../shared/textfield.dart';
import '../shared/myButtonSing.dart';
import '../shared/square.dart';

class Login extends StatefulWidget {
  final Function()? onTapp;
  const Login({
    Key? key,
    required this.onTapp,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  final usernameControl = TextEditingController();

  final passwordControl = TextEditingController();

  bool _showError = false;

  void onTapButton() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameControl.text,
        password: passwordControl.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      String errorMessage = '';
      print('Firebase Auth Error: ${e.code} - ${e.message}');
      if (e.code == 'user-not-found'){errorMessage = 'Wrong email. Please try again.';}
      else if (e.code == 'wrong-password'){errorMessage = 'Wrong password.';}
      else{errorMessage = 'wrong email or password , Please try again.';}
      
      @override
void dispose() {
    // Cancel any active work here
    super.dispose();
}


      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(errorMessage),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void wrongEmail() {}

  void wrongPassword() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 237, 237),
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 255, 254, 254),
              ),
              child: Image.asset(
                "assets/images/logo4.png",
                height: 100,
              ),
            ),

            SizedBox(
              height: 50,
            ),

            //welcome back

            //usename area
            MyTextField(
              hiegh: 60,
              widh: 25,
              num: 10,
              iconnn:Icon(Icons.email),

              controler: usernameControl,
              textInputtt: TextInputType.emailAddress,
              isPassword: false,
              hinttexttt: "email",
            ),

            SizedBox(
              height: 10,
            ),
            //password area
            MyTextField(
              hiegh: 60,
              widh: 25,
              num: 10,
              iconnn:Icon(Icons.lock),
              iconSuffix: Icon(Icons.remove_red_eye),
              controler: passwordControl,
              textInputtt: TextInputType.visiblePassword,
              isPassword: true,
              hinttexttt: "password",
            ),

            SizedBox(
              height: 10,
            ),

            //forget password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'forget password ',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MyBut(textt: 'sign in', onTap: onTapButton),

            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Or login with ',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquarTile(
                  imagePath: 'assets/images/apple.jpg',
                ),
                SizedBox(
                  width: 10,
                ),
                SquarTile(
                  imagePath: 'assets/images/google.jpg',
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey[800]),
                ),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () {
                    print('Register now tapped');
                    widget.onTapp?.call();
                  },
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],

          //google facebook login
        ),
      ))),
    );
  }
}
