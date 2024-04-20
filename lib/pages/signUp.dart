// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../shared/textfield.dart';
import '../shared/myButtonSing.dart';
import '../shared/square.dart';

void onTapButton() {}

class signup extends StatefulWidget {
  final void Function()? onTapp;
  const signup({
    Key? key,
    required this.onTapp,
  }) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final usernameControler = TextEditingController();

  final emailControler = TextEditingController();

  final passwordControler = TextEditingController();

  final repasswordControler = TextEditingController();

  void onTapButton() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      if (passwordControler.text == repasswordControler.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailControler.text,
          password: passwordControler.text,
        );
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      String errorMessage = '';
      print('Firebase Auth Error: ${e.code} - ${e.message}');

      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'Wrong email. Please try again.';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password.';
          break;
        default:
          errorMessage = 'wrong email or password , Please try again.';
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
              height: 25,
            ),

            //usename area
            MyTextField(
              hiegh: 60,
              widh: 25,
              num: 10,
              iconnn: Icon(Icons.person),
              controler: usernameControler,
              textInputtt: TextInputType.text,
              isPassword: false,
              hinttexttt: "Username",
            ),

            SizedBox(
              height: 10,
            ),
            //password area
            MyTextField(
              hiegh: 60,
              widh: 25,
              num: 10,

              iconnn: Icon(Icons.email),
              controler: emailControler,
              textInputtt: TextInputType.emailAddress,
              isPassword: false,
              hinttexttt: "email",
            ),

            SizedBox(
              height: 10,
            ),
            MyTextField(
              hiegh: 60,
              widh: 25,
              num: 10,
              iconnn:Icon(Icons.lock),
              iconSuffix: Icon(Icons.remove_red_eye),
              controler: passwordControler,
              textInputtt: TextInputType.visiblePassword,
              isPassword: true,
              hinttexttt: "password",
            ),

            SizedBox(

              height: 10,
            ),
            MyTextField(
                hiegh: 60,
                widh: 25,
                num: 10,
                iconnn:Icon(Icons.lock),
                iconSuffix: Icon(Icons.remove_red_eye),
              controler: repasswordControler,
              textInputtt: TextInputType.visiblePassword,
              isPassword: true,
              hinttexttt: "re-enter password",
            ),

            SizedBox(
              height: 25,
            ),
            MyBut(textt: 'sign up', onTap: onTapButton),

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
                  "already have an account?",
                  style: TextStyle(color: Colors.grey[800]),
                ),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTapp,
                  child: Text(
                    "login now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
          ],

          //google facebook login
        ),
      ))),
    );
  }
}
