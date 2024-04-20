import 'package:final_project/pages/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'accountPage.dart';
import 'addPage.dart';
import 'BottomNavigationBarExampleApp.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 232, 232),
        appBar: AppBar(
          title: Container(
            child: Text(
              "Mine",
              style: TextStyle(
                  color: Color.fromARGB(255, 71, 71, 71),
                  fontSize: 33,
                  fontWeight: FontWeight.bold),
            ),
            alignment: AlignmentDirectional.center,
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 25,
            ),
            SearchBar(),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categoreis',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 25),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 1,
              crossAxisCount: 5,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < 7; i++)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 210, 207, 207),
                      ),
                      child: Column(),
                    ),
                  )
              ],
            )
          ])),
        ),
      ),
    );
  }
}
