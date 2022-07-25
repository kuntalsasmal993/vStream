import 'package:flutter/material.dart';
class proFile extends StatefulWidget {
  const proFile({Key? key}) : super(key: key);

  @override
  State<proFile> createState() => _profileState();
}

class _profileState extends State<proFile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('profile')),
    );
  }
}
