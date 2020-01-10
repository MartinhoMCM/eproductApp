import 'package:eprodapp/ui/views/addproduct.dart';
import 'package:eprodapp/ui/views/homeview.dart';
import 'package:eprodapp/ui/views/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Router {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/' :
        return  MaterialPageRoute(
            builder: (_)=> HomeView()
        );
      case '/addProduct' :
        return MaterialPageRoute(
            builder: (_)=> AddProduct()
        ) ;
      case '/productDetails' :
        return MaterialPageRoute(
            builder: (_)=> ProductDetails()
        ) ;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}
