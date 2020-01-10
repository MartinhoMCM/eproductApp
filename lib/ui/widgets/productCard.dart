import 'package:eprodapp/core/models/product.dart';
import 'package:eprodapp/ui/views/productdetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget
{


  final Product productDetails;

  ProductCard({@required this.productDetails});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(
          builder: (_)=> ProductDetails(product: productDetails,)
        )
        );
      },
      child: Padding(
        padding:EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          child: Container(
            height: MediaQuery.of(context).size.width*0.9,
            child: Column(
              children: <Widget>[
                Hero(
                  tag: productDetails.id,
                  child: Image.asset('assets/${productDetails.img}.jpg',
                    height:
                    MediaQuery.
                    of(context).
                    size.
                    height*0.35,),
                ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        productDetails.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          fontStyle: FontStyle.italic
                        ),
                    ),
                  Text(
                    '${productDetails.price} \$',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      color: Colors.orangeAccent

                    ),
                  )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



}