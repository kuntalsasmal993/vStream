import 'package:flutter/material.dart';
import 'package:videostreaming_app/video_player.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'player page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Page(title: 'new class'),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Video'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => videoplayer(
                            "https://www.youtube.com/watch?v=tpFljbJxZiw")));
              },
              child: Text('player is here'),
            ),
          )
        ],
      ),
    );
  }
}
