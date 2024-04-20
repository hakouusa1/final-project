// ignore_for_file: unused_import

import 'package:final_project/firebase_options.dart';
import 'package:final_project/pages/addServe.dart';
import 'package:final_project/pages/auth_page.dart';
import 'package:final_project/pages/categoriesPage.dart';
import 'package:final_project/pages/BottomNavigationBarExampleApp.dart';
import 'package:final_project/pages/homePageMethod.dart';
import 'package:final_project/pages/login.dart';
import 'package:final_project/pages/loginOrReguster.dart';

import 'package:final_project/pages/searchPage.dart';
import 'package:final_project/pages/settingsPage.dart';
import 'package:final_project/pages/signUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {"/": (context) => Bottom()});
  }
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 234, 234),
        title: const Text("NeedServe"),
        elevation: 20,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_open,
            size: 33,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 33,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: 33,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          "Hello, yanis👋",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
