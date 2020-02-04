
import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
         image_location: "asset/jeans.png",
         image_caption: "Jeans",

          ),
           Category(
         image_location: "asset/tshirt.png",
         image_caption: "T-Shirt",

          ),
           Category(
         image_location: "asset/shoe.png",
         image_caption: "Shoes",

          ),
           Category(
         image_location: "asset/formal.png",
         image_caption: "Formals",

          ),
           Category(
         image_location: "asset/accessories.png",
         image_caption: "Accessories",

          ),
          Category(
         image_location: "asset/dress.png",
         image_caption: "Dress",

          ),
        ],
      ),
    );
  }
}
 class Category extends StatelessWidget {
    String image_location;
    String image_caption;

    Category({
      this.image_caption,
      this.image_location,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image(
          width: 100.0,
          height: 80.0,
          image: AssetImage(image_location),

        ),
        
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption),
        ),
      ),
    ),
    ),
    
      
    );
  }
}