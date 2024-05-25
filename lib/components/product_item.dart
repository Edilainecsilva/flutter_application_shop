import 'package:flutter/material.dart';
import 'package:flutter_application_shop/models/products.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    required this.product,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.favorite),
          ),
          title: Text(product.title, textAlign: TextAlign.center,),
          trailing: IconButton(onPressed: (){}, 
          icon: const Icon(Icons.shopping_cart),
          ),
        ),
        child: Image.network(
          product.imageUrl, 
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}