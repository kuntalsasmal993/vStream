import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'),fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,right: 100 ,top: MediaQuery.of(context).size.height*0.15),
              child: Text('CREATE ACCOUNT', style: TextStyle(color: Colors.white, fontSize: 33, fontWeight: FontWeight.w500),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(right: 35, left: 35, top: MediaQuery.of(context).size.height*0.45),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          filled: true,
                          labelText: 'NAME',
                          labelStyle:TextStyle(color:Colors.white,),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          filled: true,
                          labelText: 'EMAIL',
                          labelStyle:TextStyle(color:Colors.white,),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          filled: true,
                          labelText: 'PASSWORD',
                          labelStyle:TextStyle(color:Colors.white,),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In', style: TextStyle(color:Colors.white, fontSize: 27, fontWeight: FontWeight.w700),),
                        SizedBox(width: 20,),
                        CircleAvatar(radius: 30, backgroundColor: Color(0xff4c505b),
                          child: IconButton(color: Colors.white, onPressed: (){},
                            icon: Icon(Icons.arrow_forward),),)
                      ],
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     TextButton(onPressed: (){Navigator.pushNamed(context, 'register');}, child: Text('Sign up',style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, color: Color(0xff4c505b)),)),
                    //    // TextButton(onPressed: (){}, child: Text('Forget Password',style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, color: Color(0xff4c505b)),))
                    //
                    //   ],
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
