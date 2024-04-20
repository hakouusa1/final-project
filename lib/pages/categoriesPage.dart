// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports
import 'package:final_project/pages/homePageMethod.dart';

import 'BottomNavigationBarExampleApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriPage extends StatelessWidget {
  const CategoriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            padding: EdgeInsets.symmetric(horizontal: 30),
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bottom()));
            }),
        centerTitle: true,
        title: Text(
          "categories",
          style: TextStyle(
              color: Colors.black, fontSize: 33, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 238, 237, 237),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
            child: Center(
          child: SingleChildScrollView(
              child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 1,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: [
              for (int i = 0; i < 15; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
          )),
        )),
      ),
    );
  }
}
