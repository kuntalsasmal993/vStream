

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => homePageState();
}
class homePageState extends State<homePage>{

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
    body: (
    GridView.count(crossAxisCount: 2,
    children: <Widget>[
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)
            ),
          child: Stack(
            children: <Widget>[
              Image.network('https://images.unsplash.com/photo-1658516181269-8b9eb6d3fcb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)
          ),
          child: Stack(
            children: <Widget>[
              Image.network('',height: 150,width: 200,fit: BoxFit.fitWidth,),
              Container(
                margin: EdgeInsets.only(top: 155, left: 5),
                child: Text('hello',style: TextStyle(fontSize: 20),),

              )
            ],
          ),
        ),
      ),
    ],
    )
    ),

    );


}