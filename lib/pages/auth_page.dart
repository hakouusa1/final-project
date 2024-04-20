import 'package:final_project/pages/BottomNavigationBarExampleApp.dart';
import 'package:final_project/pages/homePageMethod.dart';
import 'package:final_project/pages/login.dart';
import 'package:final_project/pages/loginOrReguster.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class authPage extends StatelessWidget {
  const authPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Bottom();
          } else {
            return loginOrREG();
          }
        },
      ),
    );
  }
}
