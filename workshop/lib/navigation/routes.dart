import 'package:workshop/navigation/screen1.dart';
import 'package:workshop/navigation/screen2.dart';
import 'package:workshop/navigation/screen3_.dart';

class AppRoutes {
  static final routes = {
    '/': (context) => Screen1(),
    '/screen2': (context) => Screen2(),
    '/screen3': (context) => Screen3(),
  };
}
