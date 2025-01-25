import 'package:flutter/material.dart';

class PickFilesScreen extends StatefulWidget {
  const PickFilesScreen({super.key});

  @override
  State<PickFilesScreen> createState() => _PickFilesScreenState();
}

class _PickFilesScreenState extends State<PickFilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Files'),
      ),
      body: Column(),
    );
  }
}
