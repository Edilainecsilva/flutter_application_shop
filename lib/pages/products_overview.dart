import 'package:flutter/material.dart';
import 'package:flutter_application_shop/components/product_item.dart';
import 'package:flutter_application_shop/data/data.dart';
import 'package:flutter_application_shop/models/products.dart';

class ProductOverViewPage extends StatelessWidget {
  final List<Product> loaderProducts = dummyProducts;
   ProductOverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loaderProducts.length,
        itemBuilder: (context, i) => ProductItem(product: loaderProducts[i]), 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        )),
        
    );
  }
}