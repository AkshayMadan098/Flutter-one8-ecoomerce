import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:one8/Horizontal_list.dart';
import 'package:one8/Products.dart';
import 'package:one8/cart.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("asset/m2.jpg"),
          AssetImage('asset/m1.jpeg'),
          AssetImage("asset/m2.jpg"),
          AssetImage('asset/m1.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),

      )
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("One8"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
            },
            color: Colors.white,
          )
        ],
      ),
      drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
       UserAccountsDrawerHeader(
      accountEmail: Text("Akshay@gmail.com"),
      accountName: Text("Akshay Madan"),
      currentAccountPicture: CircleAvatar(
        child: Text("A"),
      ),
       ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('HomePage'),
        ),
        ListTile(
          leading: Icon(Icons.category),
          title: Text('Categories'),
        ),
        ListTile(
          leading: Icon(Icons.shopping_basket),
          title: Text('Your Orders'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Your wishlist'),
        ),
         ListTile(
          leading: Icon(Icons.person),
          title: Text('Your account'),
        ),
        Divider(),

         ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        )
      ],
    ),
  ),
  body: new ListView(
    children: <Widget>[
      image_carousel,
      Padding(padding: EdgeInsets.all(10.0),
      child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.0 ),),
      ),
     HorizontalList(),
      Padding(padding: EdgeInsets.all(20.0),
      child: Text("Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.0 ),),
      ),
     Container(
       height: 320,
       child: Products(),
     )
    ],
  ),
    );
  }
}