import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import '../widgets/user_product_item.dart';
import '../widgets/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const String routeName = "/user-products";

  const UserProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductsProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Products"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const AppDrawer(),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: productData.items.length,
            itemBuilder: (_, i) => Column(
              children: [
                UserProductItem(
                  title: productData.items[i].title,
                  imageUrl: productData.items[i].imageUrl,
                ),
                const Divider(),
              ],
            ),
          )),
    );
  }
}
