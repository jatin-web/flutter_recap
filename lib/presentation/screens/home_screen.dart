import 'package:flutter/material.dart';
import 'package:flutter_recap/presentation/screens/learn_abstract_class.dart';
import 'package:flutter_recap/presentation/screens/learn_extensions.dart';
import 'package:flutter_recap/presentation/screens/learn_get_it_service_locator.dart';
import 'package:flutter_recap/presentation/screens/learn_getter_setter.dart';
import 'package:flutter_recap/presentation/screens/learn_encapsulation.dart';
import 'package:flutter_recap/presentation/screens/learn_isolates.dart';
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
          ListTile(
            title: const Text("Learn Abstract class"),
            onTap: () {
              Navigator.pushNamed(context, LearnAbstractClassScreen.routeName);
            },
          ),
          ListTile(
            title: const Text("Learn Encapsulation"),
            onTap: () {
              Navigator.pushNamed(context, LearnEncapsulation.routeName);
            },
          ),
          ListTile(
            title: const Text("Learn Getter and Setter"),
            onTap: () {
              Navigator.pushNamed(context, LearnGetterSetter.routeName);
            },
          ),
          ListTile(
            title: const Text("Learn Isolates"),
            onTap: () {
              Navigator.pushNamed(context, LearnIsolateScreen.routeName);
            },
          ),
          ListTile(
            title: const Text("Learn Get It"),
            onTap: () {
              Navigator.pushNamed(context, LearnGetItServiceLocator.routeName);
            },
          ),
        ],
      ),
    );
  }
}
