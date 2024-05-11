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
        title: const Text("Flutter Recap"),
        backgroundColor: Colors.purple.withOpacity(0.2),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyTile(
                title: const Text("Learn Singleton"),
                onTap: () {
                  Navigator.pushNamed(context, LearnSingleton.routeName);
                },
              ),
              MyTile(
                title: const Text("Learn Extensions"),
                onTap: () {
                  Navigator.pushNamed(context, LearnExtensions.routeName);
                },
              ),
              MyTile(
                title: const Text("Learn Abstract class"),
                onTap: () {
                  Navigator.pushNamed(
                      context, LearnAbstractClassScreen.routeName);
                },
              ),
              MyTile(
                title: const Text("Learn Encapsulation"),
                onTap: () {
                  Navigator.pushNamed(context, LearnEncapsulation.routeName);
                },
              ),
              MyTile(
                title: const Text("Learn Getter and Setter"),
                onTap: () {
                  Navigator.pushNamed(context, LearnGetterSetter.routeName);
                },
              ),
              MyTile(
                title: const Text("Learn Isolates"),
                onTap: () {
                  Navigator.pushNamed(context, LearnIsolateScreen.routeName);
                },
              ),
              MyTile(
                title: const Text("Learn Get It"),
                onTap: () {
                  Navigator.pushNamed(
                      context, LearnGetItServiceLocator.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile({super.key, required this.title, required this.onTap});
  final Widget title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        child: ListTile(
          title: title,
          onTap: onTap,
        ));
  }
}
