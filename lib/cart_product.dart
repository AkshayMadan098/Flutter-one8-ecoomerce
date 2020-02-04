import 'package:flutter/material.dart';
class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var products_cart=[

{
  "name":"Blazer",
  "picture":"asset/blazer1.jpeg",
  "price":950,
  "size":"L",
  "color":"Black",
  "quantity":1
},
{
  "name":"Pants",
  "picture":"asset/pants1.jpg",
  "price":950,
  "size":"L",
  "color":"Black",
  "quantity":1
},
{
  "name":"Pants",
  "picture":"asset/pants1.jpg",
  "price":950,
  "size":"L",
  "color":"Black",
  "quantity":1
},

];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context,index){
      return Single_cart_product(
        cart_prod_color: products_cart[index]['color'],
        cart_prod_name: products_cart[index]['name'],
        cart_prod_size: products_cart[index]['size'],
        cart_prod_qty: products_cart[index]['quantity'],
        cart_prod_price: products_cart[index]['price'],
        cart_prod_picture: products_cart[index]['picture'],
        );
      },
    );
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_color,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
    this.cart_prod_size,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image(
          width: 80.0,
          height: 80.0,
          image: AssetImage(cart_prod_picture),
        ),
        title:Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Size:"),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(cart_prod_size),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20.0,8.0,8.0,8.0),
                 child: Text("Color:"),
               ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: Text(cart_prod_color),
               )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("${cart_prod_price}",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}