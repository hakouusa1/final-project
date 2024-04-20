// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:final_project/pages/NeedServe.dart';
import 'package:final_project/pages/addServe.dart';
import 'package:final_project/pages/searchPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'MinePage.dart';
import 'accountPage.dart';
import 'BottomNavigationBarExampleApp.dart';

class addPage extends StatefulWidget {
  const addPage({super.key});

  @override
  State<addPage> createState() => _addPageState();
}

class _addPageState extends State<addPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 1000,
        decoration:
            BoxDecoration(color: const Color.fromARGB(255, 218, 217, 217)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        "Add a Serve? ",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 57, 111, 132),
                            fontSize: 29,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        "The first choice is to add a serve that u are master in 😌 , And the second choice is a pub that can people can give you a serve!  ",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 0.9,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  // add a serve
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => AddServe()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 68, 67, 67)),
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromARGB(255, 190, 187, 187),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Container(
                                  child: Text(
                                    "Add Serve ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 57, 111, 132),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Need a Serve
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => NeedServe()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 68, 67, 67)),
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromARGB(255, 190, 187, 187),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  " Need Serve ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 57, 111, 132),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
