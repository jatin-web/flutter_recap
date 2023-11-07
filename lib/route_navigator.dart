import 'package:flutter/material.dart';
import 'package:flutter_recap/presentation/screens/home_screen.dart';
import 'package:flutter_recap/presentation/screens/learn_extensions.dart';
import 'package:flutter_recap/presentation/screens/learn_singleton.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case LearnSingleton.routeName:
        return MaterialPageRoute(builder: (_) => const LearnSingleton());
      case LearnExtensions.routeName:
        return MaterialPageRoute(builder: (_) => const LearnExtensions());
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text("Default Route"))));
    }
  }
}
