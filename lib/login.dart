import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.height*0.25, top: MediaQuery.of(context).size.height*0.1),
              child: Image.asset('assets/logo1.png', height: 200, width: 300,),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(right: 35, left: 35, top: MediaQuery.of(context).size.height*0.45),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'EMAIL',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'PASSWORD',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In', style: TextStyle(color:Color(0xff4c505b), fontSize: 27, fontWeight: FontWeight.w700),),
                        SizedBox(width: 20,),
                        CircleAvatar(radius: 30, backgroundColor: Color(0xff4c505b),
                          child: IconButton(color: Colors.white, onPressed: (){},
                          icon: Icon(Icons.arrow_forward),),)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){Navigator.pushNamed(context, 'register');}, child: Text('Sign up',style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, color: Color(0xff4c505b)),)),
                        TextButton(onPressed: (){}, child: Text('Forget Password',style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, color: Color(0xff4c505b)),))

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
            ),
      ),
     );
  }
}
