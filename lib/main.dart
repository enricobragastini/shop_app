import 'package:flutter/material.dart';
import 'package:shop/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/cart_screen.dart';
import './screens/orders_screen.dart';
import './screens/user_products_screen.dart';

import './providers/products_provider.dart';
import './providers/cart_provider.dart';
import './providers/orders_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: CartProvider()),
          ChangeNotifierProvider.value(value: ProductsProvider()),
          ChangeNotifierProvider.value(value: OrdersProvider())
        ],
        child: ChangeNotifierProvider(
          create: (ctx) => ProductsProvider(),
          child: MaterialApp(
            title: 'MyShop',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: "Lato",
                primarySwatch: Colors.purple,
                colorScheme: ColorScheme.fromSwatch()
                    .copyWith(secondary: Colors.deepOrange)),
            home: const ProductOverviewScreen(),
            routes: {
              ProductDetailScreen.routeName: (context) =>
                  const ProductDetailScreen(),
              CartScreen.routeName: (context) => const CartScreen(),
              OrdersScreen.routeName: (context) => const OrdersScreen(),
              UserProductsScreen.routeName: ((context) =>
                  const UserProductsScreen())
            },
          ),
        ));
  }
}
