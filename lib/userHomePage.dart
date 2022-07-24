import 'package:flutter/material.dart';
class userHomePage extends StatefulWidget {
  const userHomePage({Key? key}) : super(key: key);

  @override
  State<userHomePage> createState() => _userHomePageState();
}

class _userHomePageState extends State<userHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('HOME PAGE'),

      ),
    );
  }
}
