import 'package:flutter/material.dart';
import 'package:workshop/navigation/screen3_.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
              child: Text('Go To Screen3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go To Screen1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/screen3',
                );
              },
              child: Text('Go To Screen3'),
            ),
          ],
          // children: [
          //   TextButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => Screen3(),
          //         ),
          //       );
          //     },
          //     child: Text('Go To Screen3'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //     child: Text('Go To Screen1'),
          //   ),
          //   ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushReplacement(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => Screen3(),
          //         ),
          //       );
          //     },
          //     child: Text('Go To Screen3'),
          //   ),
          // ],
        ),
      ),
    );
  }
}
