
import 'package:videostreaming_app/pages/video.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => homePageState();
}
class homePageState extends State<homePage>{
  final int videos= 10;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Image.asset("assets/logo1.png",height: 100, fit: BoxFit.contain),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search))],
    ),
    backgroundColor: Colors.white,
    body: ListView.builder(itemCount: videos,
        itemBuilder: (context, i){
        return video();
    }),
    );


}