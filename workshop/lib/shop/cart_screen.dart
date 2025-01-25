import 'package:flutter/material.dart';
import 'package:workshop/shop/product_model.dart';
import 'package:workshop/shop/shop_home.dart';

class ShopCartScreen extends StatefulWidget {
  const ShopCartScreen({super.key, required this.myCart});

  final List<Product> myCart;

  @override
  State<ShopCartScreen> createState() => _ShopCartScreenState();
}

class _ShopCartScreenState extends State<ShopCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Cart'),
      ),
      body: widget.myCart.isEmpty
          ? Center(
              child: Text('Cart is empty'),
            )
          : ListView.builder(
              itemCount: widget.myCart.length,
              itemBuilder: (context, index) {
                final product = widget.myCart[index];
                return ListTile(
                  title: Text(product.name),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        cartProduct.remove(product);
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
