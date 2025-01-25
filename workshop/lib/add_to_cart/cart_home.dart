import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop/add_to_cart/cart.dart';
import 'package:workshop/add_to_cart/model.dart';
import 'package:workshop/add_to_cart/provider.dart';

class CartHome extends StatefulWidget {
  const CartHome({super.key});

  @override
  State<CartHome> createState() => _CartHomeState();
}

class _CartHomeState extends State<CartHome> {
  final List<Product> products = [
    Product(id: '1', name: 'Product 1', price: 10.0),
    Product(id: '2', name: 'Product 2', price: 20.0),
    Product(id: '3', name: 'Product 3', price: 30.0),
    Product(id: '4', name: 'Product 4', price: 40.0),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CartProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart(),
              ),
            ),
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(product.id),
            ),
            title: Text(product.name),
            trailing: IconButton(
              onPressed: () {
                provider.add(product);
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          );
        },
      ),
    );
  }
}
