import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/add_to_cart/cart_home.dart';
import 'package:state_management/add_to_cart/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        home: CartHome(),
      ),
    );
  }
}
