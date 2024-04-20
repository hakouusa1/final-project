// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'MinePage.dart';
import 'accountPage.dart';
import 'addPage.dart';
import 'BottomNavigationBarExampleApp.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 232, 232),
        body: Center(
          child: SingleChildScrollView(child: Column(children: [])),
        ),
      ),
    );
  }
}
