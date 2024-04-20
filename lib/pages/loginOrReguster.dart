// ignore_for_file: empty_statements, camel_case_types, unused_element

import 'package:final_project/pages/login.dart';
import 'package:final_project/pages/signUp.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginOrREG extends StatefulWidget {
  const loginOrREG({super.key});

  @override
  State<loginOrREG> createState() => _loginOrReguster();
}

class _loginOrReguster extends State<loginOrREG> {
  bool showLoginPage = true;
  void toggleView() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(onTapp: toggleView);
    } else {
      return signup(onTapp: toggleView);
    }
  }
}
