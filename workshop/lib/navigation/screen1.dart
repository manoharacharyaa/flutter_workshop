import 'package:flutter/material.dart';
import 'package:workshop/navigation/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/screen2');
          },
          child: Text('Go To Screen2'),
        ),
      ),
    );
  }
}
