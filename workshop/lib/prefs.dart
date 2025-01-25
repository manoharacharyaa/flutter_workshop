import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs extends StatefulWidget {
  const SharedPrefs({super.key});

  @override
  State<SharedPrefs> createState() => _SharedPrefsState();
}

class _SharedPrefsState extends State<SharedPrefs> {
  bool isDarkmode = false;

  Future<void> toggleDarkMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkmode = prefs.getBool('value')!;
      print(isDarkmode);
    });
  }

  @override
  void initState() {
    toggleDarkMode();
    print(isDarkmode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkmode ? Colors.black : Colors.white,
      body: Center(
        child: Transform.scale(
          scale: 2,
          child: CupertinoSwitch(
            value: isDarkmode,
            inactiveTrackColor: Colors.grey,
            onChanged: (value) async {
              setState(() {
                isDarkmode = value;
              });
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool('value', value);
            },
          ),
        ),
      ),
    );
  }
}
