// import'package:flutter/material.dart';
// import 'package:videostreaming_app/login.dart';
//
// class splash extends StatefulWidget{
//   const splash({Key? key}) : super(key: key);
//
//   @override
//   State<splash> createState() => _splashState();
// }
//
// class _splashState extends State<splash> {
//   @override
//   initState(){
//     super.initState();
//     tologin();
//   }
//   tologin() async {
//     await Future.delayed(Duration(milliseconds: 2000),() {});
//      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyLogin()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(height: 100, width: 100, color: Colors.blue,),
//             Container(
//               child: Text('Splash Screen', style: TextStyle(color: Colors.red, fontSize: 50, fontWeight: FontWeight.w900),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
