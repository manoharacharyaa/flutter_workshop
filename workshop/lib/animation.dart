import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 1,
    );

    animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    controller!.forward();
    // controller!.reverse(from: 1);

    // animation!.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller!.reverse(from: 1);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller!.forward();
    //   }
    // });

    controller!.addListener(() {
      setState(() {});
      print(controller!.value);
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(animation!.value),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'dash',
            child: Center(
              child: Image.asset(
                'images/dash.png',
                height: animation!.value * 200,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.white,
            child: Text(
              'Go To Screen2',
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenTwo(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: 'dash',
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset('assets/images/dash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
