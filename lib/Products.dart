import 'package:flutter/material.dart';
import 'package:one8/Product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "asset/blazer1.jpeg",
      "price": 850,
    },
    {
      "name": "Jeans",
      "picture": "asset/jeans.png",
      "price": 500,
    },
    {
      "name": "Shoes",
      "picture": "asset/shoe1.jpg",
      "price": 550,
    },
    {
      "name": "Skirts",
      "picture": "asset/skt1.jpeg",
      "price": 500,
    },
    {
      "name": "Red dress",
      "picture": "asset/dress1.jpeg",
      "price": 500,
    },
    {
      "name": "Heels",
      "picture": "asset/hills1.jpeg",
      "price": 500,
    },
    {
      "name": "Pants",
      "picture": "asset/pants1.jpg",
      "price": 500,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,

    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                        leading: Text(
                          prod_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "\$$prod_price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                        
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}