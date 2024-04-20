// ignore_for_file: prefer_const_constructors

import 'package:final_project/pages/MinePage.dart';
import 'package:final_project/pages/accountPage.dart';
import 'package:final_project/pages/addPage.dart';
import 'package:final_project/pages/homePageMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_project/pages/pageView.dart';
import 'package:flutter/material.dart';

int bottomSelectedIndex = 0;

List<BottomNavigationBarItem> buildBottomNavBarItems() {
  return [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Mine"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
  ];
}

class Bottom extends StatefulWidget {
  
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  PageController pageController = PageController(
    initialPage: bottomSelectedIndex,
    keepPage: true,
  );

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[homePage(), addPage(), MinePage(), AccountPage()],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 111, 132),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          bottomTapped(index);
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
