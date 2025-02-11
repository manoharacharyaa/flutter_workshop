import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/providers/app_logic.dart';
import 'package:todo_api/screens/add_task.dart';
import 'package:todo_api/screens/home_screen.dart';
import 'package:todo_api/v2/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppLogic()),
      ],
      child: MaterialApp(
        title: 'Todo Api App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          colorScheme: const ColorScheme.dark(),
        ),
        home: const HomeScreenV2(),
        routes: {
          '/add': (context) => const AddTaskScreen(),
          '/home': (context) => const HomeScreen(),
        },
      ),
    );
  }
}
