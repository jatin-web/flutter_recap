import 'package:flutter/material.dart';
import 'package:flutter_recap/presentation/screens/learn_extensions.dart';
import 'package:flutter_recap/presentation/screens/learn_singleton.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Learn Singleton"),
            onTap: () {
              Navigator.pushNamed(context, LearnSingleton.routeName);
            },
          ),
          ListTile(
            title: const Text("Learn Extensions"),
            onTap: () {
              Navigator.pushNamed(context, LearnExtensions.routeName);
            },
          ),
        ],
      ),
    );
  }
}
