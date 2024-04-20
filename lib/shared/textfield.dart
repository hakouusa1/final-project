// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final double hiegh;
  final Color? fieldColor;
  final double widh;
  final double num;
  final Icon? iconSuffix ;
  final TextInputType? textInputtt;
  final bool isPassword;
  final String hinttexttt;
  final controler;
  final Icon? iconnn;

  const MyTextField({
    super.key,
     this.textInputtt,
      required this.isPassword,
    required this.hinttexttt,
     this.controler,  this.iconnn, this.iconSuffix , required this.num, required this.widh , this.fieldColor, required this.hiegh
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: widh),
        child: SizedBox(
          height: hiegh,
          child: TextField(

              
              controller: controler,
              keyboardType: textInputtt,
              obscureText: isPassword,

              decoration: InputDecoration(

                prefixIcon: iconnn,
                suffixIcon: iconSuffix,
                hintText: hinttexttt,

                hintStyle: TextStyle(color: Colors.grey[600] , ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(num),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 117, 117, 117)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade900,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,

          
              )),
        ));
  }
}
