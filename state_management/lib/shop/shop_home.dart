import 'package:flutter/material.dart';
import 'package:state_management/add_to_cart/model.dart';
import 'package:state_management/shop/cart_screen.dart';

final List<Product> cartProduct = [];

// List<Product> get cart => _cartProduct;

class ShopHome extends StatefulWidget {
  const ShopHome({super.key});

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  final List<Product> products = [
    Product(id: '1', name: 'Product 1', price: 10.0),
    Product(id: '2', name: 'Product 2', price: 20.0),
    Product(id: '3', name: 'Product 3', price: 30.0),
    Product(id: '4', name: 'Product 4', price: 40.0),
  ];

  void adddToCart(Product product) {
    cartProduct.add(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  adddToCart(product);
                });
              },
              icon: Icon(
                Icons.add_shopping_cart,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShopCartScreen(
              myCart: cartProduct,
            ),
          ),
        ),
      ),
    );
  }
}
