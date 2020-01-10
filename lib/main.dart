import 'package:eprodapp/core/viewmodels/crudmodel.dart';
import 'package:eprodapp/locator.dart';
import 'package:eprodapp/ui/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CRUDModel>(create: (_) => locator<CRUDModel>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        title: 'Product App',
        theme: ThemeData(),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }



}

