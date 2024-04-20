// ignore_for_file: unused_element, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:final_project/pages/homePageMethod.dart';
import 'package:final_project/shared/textfield.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationBarExampleApp.dart';
import 'MinePage.dart';
import 'accountPage.dart';
import 'addPage.dart';

class AddServe extends StatefulWidget {
  const AddServe({super.key});

  @override
  State<AddServe> createState() => _AddServeState();
}

class _AddServeState extends State<AddServe> {
  _getRequests() async {}

  final Widget _fab = Row(
    children: [
      FloatingActionButton(
        onPressed: () {},
        child: const Text("Cancel"),
      ),
      FloatingActionButton(
        onPressed: () {},
        child: const Text("Confirm"),
      ),
    ],
  );

  bool _valueee = false;
  void onChanged(bool? value) {
    if (value is bool) {
      setState(() {
        _valueee = value;
      });
    }
  }

  var _dropdawnvalue;

  void onchanged(String? value) {
    if (value is String) {
      setState(() {
        _dropdawnvalue = value;
      });
    }
  }

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
          "Add serve",
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
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Okay, what you Nedd ?",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: const Color.fromARGB(255, 248, 246, 246),
                child: TextFormField(
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 0.0),
                        child: Icon(Icons.person,
                            size: 40.0,
                            color: const Color.fromARGB(255, 9, 9, 9)),
                      ),
                      labelText: "Writ here",
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      hintText: " ",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(77, 17, 17, 17)),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(new Radius.circular(25.0))),
                      labelStyle:
                          TextStyle(color: const Color.fromARGB(255, 7, 7, 7))),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 9, 9, 9),
                    fontSize: 19.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Chose the Categorei",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                  isPassword: false,
                  hinttexttt: "chose the Category of the serve ",
                  num: 25,
                  widh: 10,
                  hiegh: 50),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text(
                      "isnt ergent ?",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    Checkbox(value: _valueee, onChanged: onChanged),
                  ],
                ),
              ),

              // Set the position of the floating action button
            ],
          )),
        )),
      ),

      floatingActionButton: Container(
        width: 250,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  foregroundColor: const Color.fromARGB(255, 57, 111, 132),
                  backgroundColor: Color.fromARGB(255, 215, 216, 216),
                  icon: Icon(Icons.cancel),
                  label: Text("cancel"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton.extended(
                  foregroundColor: const Color.fromARGB(255, 215, 216, 216),
                  backgroundColor: const Color.fromARGB(255, 57, 111, 132),
                  icon: Icon(Icons.check),
                  label: Text("confirm"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),

      // Set the position of the floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
