// ignore_for_file: avoid_unnecessary_containers, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:final_project/pages/loginOrReguster.dart';
import 'package:final_project/pages/searchBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../shared/ads.dart';
import '../shared/categore.dart';
import '../shared/itemsW.dart';
import '../shared/textfield.dart';
import 'categoriesPage.dart';

final user = FirebaseAuth.instance.currentUser;

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 57, 111, 132)),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // the purpel layout
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 57, 111, 132),
                ),
                width: 1000,
                height: 310,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              " NeedServe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          IconButton(
                            onPressed: signOut,
                            icon: Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyTextField(
                      hiegh: 56,
                      widh: 20,
                      iconnn:Icon(Icons.search_sharp),
                      num: 20,

                      textInputtt: TextInputType.text,
                      isPassword: false,
                      hinttexttt: "Search",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Popular Categoreis',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoriPage() //here pass the actual values of these variables, for example false if the payment isn't successfull..etc
                                    ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'see all',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 72, 213, 81),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            categore(
                              scalle: 18,
                              name: 'logo design',
                              hash: "assets/images/loggo.jpg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            categore(
                              scalle: 25,
                              name: 'Ai ',
                              hash: "assets/images/ia.jpg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            categore(
                              scalle: 12,
                              name: 'app designe ',
                              hash: "assets/images/appdevvv.jpg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            categore(
                              scalle: 25,
                              name: 'Ai ',
                              hash: "assets/images/ia.jpg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            categore(
                              scalle: 25,
                              name: 'Ai ',
                              hash: "assets/images/ia.jpg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            categore(
                              scalle: 25,
                              name: 'Ai ',
                              hash: "assets/images/ia.jpg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),

              // the works layout
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 218, 217, 217)),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Trending Works',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    // works items list
                    ItemsW(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
