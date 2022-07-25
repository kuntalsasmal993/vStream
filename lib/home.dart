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