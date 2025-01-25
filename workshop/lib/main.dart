// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop/add_to_cart/cart_home.dart';
import 'package:workshop/add_to_cart/provider.dart';
import 'package:workshop/1_cols_rows.dart';
import 'package:workshop/animation.dart';
import 'package:workshop/internals/keys.dart';
import 'package:workshop/isolates.dart';
import 'package:workshop/navigation/nav_bar.dart';
import 'package:workshop/navigation/routes.dart';
import 'package:workshop/navigation/screen1.dart';
import 'package:workshop/navigation/screen2.dart';
import 'package:workshop/scrollables/pageview.dart';
import 'package:workshop/shop/shop_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Isolates(),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     initialRoute: '/',
  //     routes: AppRoutes.routes,
  //   );
  // }
}




  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => CartProvider(),
  //     child: const MaterialApp(
  //       home: CartHome(),
  //     ),
  //   );
  // }
