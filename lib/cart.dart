import 'package:flutter/material.dart';
import 'package:one8/cart_product.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
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
            onPressed: (){},
            color: Colors.white,
          )
        ],
      ),
      body: CartProduct(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(children: <Widget>[
          Expanded(
            child: ListTile(
              title: Text("Total"),
              subtitle: Text("950"),
            ),
          ),
          Expanded(
            child: MaterialButton(
              
              onPressed: (){},
              child: Text("Check Out",style: TextStyle(color: Colors.white),),
              color: Colors.blue,
            ),
          )
        ],),
      ),
    );
  }
}