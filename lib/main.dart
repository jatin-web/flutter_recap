import 'package:flutter/material.dart';
import 'package:flutter_recap/presentation/screens/home_screen.dart';
import 'package:flutter_recap/route_navigator.dart';
import 'package:flutter_recap/service_locator.dart';

void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Recap",
      onGenerateRoute: RouteNavigator.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
