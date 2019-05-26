import 'package:flutter/material.dart';
void cart()=> runApp(
  MaterialApp(
    home: MyCart(),
  )
);
class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          actions: <Widget>[
            Icon(Icons.notifications),
            Padding(padding: EdgeInsets.all(10),),
            Icon(Icons.search),
            Padding(padding: EdgeInsets.all(5),

            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
        Column(
          children: <Widget>[
            Text('Total items :4.',style: TextStyle(fontSize: 20,),),
          ],)
        )
    );
  }
}