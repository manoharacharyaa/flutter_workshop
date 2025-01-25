import 'package:flutter/material.dart';
import 'package:workshop/scrollables/gridview.dart';
import 'package:workshop/scrollables/listview.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentPage = 0;
  List<Widget> pages = [
    ListViewScreen(),
    GridViewScreen(),
    PageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[currentPage],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPage,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
        onDestinationSelected: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
