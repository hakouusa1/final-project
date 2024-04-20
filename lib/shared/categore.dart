// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

class categore extends StatelessWidget {
  final double scalle;
  final String name;
  final String hash;

  const categore(
      {super.key,
      required this.name,
      required this.hash,
      required this.scalle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          height: 65,
          width: 65,
          child: Image.asset(
            hash,
            scale: scalle,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
