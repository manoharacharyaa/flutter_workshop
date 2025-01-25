import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop/add_to_cart/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: cart.items.isEmpty
          ? Center(
              child: Text('No products in the cart'),
            )
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final product = cart.items[index];
                return ListTile(
                  title: Text(product.name),
                  trailing: IconButton(
                    onPressed: () {
                      cart.remove(product);
                      setState(() {});
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
    );
  }
}
