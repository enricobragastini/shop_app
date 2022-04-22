import 'package:flutter/material.dart';

import 'screens/products_overview_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Lato",
          primarySwatch: Colors.purple,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange)),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
      },
    );
  }
}
