import 'package:flutter/material.dart';
import 'cart.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Grocery(),
    );
  }
}
class Grocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Alessia'),
          accountEmail: Text('alessia@dacts.com'),
          currentAccountPicture: CircleAvatar(
            child: Icon(Icons.perm_identity,color:Colors.white70),
            backgroundColor: Colors.grey,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
            Icon(Icons.home,size: 30,color: Colors.grey),
                        Padding(padding: EdgeInsets.all(10),),

            Text('Home'),
            ],),
          ),
             Container(
               padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
            Icon(Icons.dashboard,size: 30,color: Colors.grey),
                        Padding(padding: EdgeInsets.all(10),),

            Text('Products'),
            ],),
          ),   Container(
            padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
            Icon(Icons.shopping_basket,size: 30,color: Colors.grey),
            Padding(padding: EdgeInsets.all(10),),
            Text('Your Cart'),
            ],),
          ),
             Container(
               padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
            Icon(Icons.favorite,size: 30,color: Colors.red),
                        Padding(padding: EdgeInsets.all(10),),

            Text('Favourite'),
            ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Icon(Icons.settings,color:Colors.grey,size:30),
                Padding(padding: EdgeInsets.all(10),),
                Text('Settings'),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Icon(Icons.help,size:30,color:Colors.grey),
                Padding(padding: EdgeInsets.all(10),),
                Text('About'),
              ],
            ),
          ),
        ]
        )
        ),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Grocery Shop'),
        actions: <Widget>[
          Icon(Icons.shopping_cart),
          Padding(padding:EdgeInsets.all(16)),
          Icon(Icons.account_circle),
          Padding(padding: EdgeInsets.all(5)),
        
        ],
      ),
  body:  SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      children:<Widget>[ 
        Container(
      child: Image.asset('assets/veg1.jpg'),
    ),
    Container(
      height: 2,
    ),
    ],
  ),),
     floatingActionButton: FloatingActionButton.extended(
       icon: Icon(Icons.shopping_basket),
       label: Text(': Rs. 0'),
       backgroundColor: Colors.lightGreen,
       onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> MyCart()),
       ),
    )
    );
  }

}                                                                                     