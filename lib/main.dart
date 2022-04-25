import 'package:flutter/material.dart';
import 'package:shop/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

import 'screens/products_overview_screen.dart';
import './providers/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductsProvider(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            fontFamily: "Lato",
            primarySwatch: Colors.purple,
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.deepOrange)),
        home: const ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) =>
              const ProductDetailScreen(),
        },
      ),
    );
  }
}
