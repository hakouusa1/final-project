import 'package:final_project/pages/BottomNavigationBarExampleApp.dart';
import 'package:final_project/pages/MinePage.dart';
import 'package:final_project/pages/accountPage.dart';
import 'package:final_project/pages/addPage.dart';
import 'package:final_project/pages/homePageMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  PageController pageController = PageController(
  initialPage: 0,
  keepPage: true,
);
void pageChanged(int index) {
  setState(() {
    bottomSelectedIndex = index;
  });
}
@override
void initState() {
  super.initState();
}

@override


  
  Widget build(BuildContext context) {
    // TODO: implement build
    
  return PageView(
    controller: pageController,
    onPageChanged: (index) {
      pageChanged(index);
    },
    children: <Widget>[
      homePage(),
      addPage(),
      MinePage(),
      AccountPage()
    ],
  );
}

}









