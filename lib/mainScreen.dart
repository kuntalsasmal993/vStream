import 'package:flutter/material.dart';
import 'package:videostreaming_app/pages/home.dart';
import 'package:videostreaming_app/main.dart';
import 'package:videostreaming_app/pages/profile.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => MainPageState();



}
class MainPageState extends State<homeScreen>{
  int currentIndex = 0;
  final screens = [
    homePage(),
    profilePage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text('VStream', style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),),
    backgroundColor: Colors.grey,
    body: IndexedStack(
      index: currentIndex,
      children: screens,
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      iconSize: 30,
      selectedFontSize: 15,
      showUnselectedLabels: false,
      onTap: (index) => setState(() => currentIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Home'),
          //backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ('Profile'),
         // backgroundColor: Colors.cyan,
        )
      ],
    ),
  );


}
