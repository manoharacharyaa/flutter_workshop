import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final pageView = PageView(
    controller: PageController(initialPage: 0),
    children: [
      Center(child: Text('Page 1')),
      Center(child: Text('Page 2')),
      Center(child: Text('Page 3')),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
      ),
      body: pageView,
    );
  }
}
