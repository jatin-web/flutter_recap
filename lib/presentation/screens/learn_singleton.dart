import 'package:flutter/material.dart';
import 'package:flutter_recap/data/models/singleton_test.dart';

class LearnSingleton extends StatefulWidget {
  static const String routeName = "learn_singleton";
  const LearnSingleton({super.key});

  @override
  State<LearnSingleton> createState() => _LearnSingletonState();
}

class _LearnSingletonState extends State<LearnSingleton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Learn Singleton")),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            Text(
              MySingleton().getVal().toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),

            // Increment Button
            ElevatedButton(
                onPressed: () {
                  MySingleton singleton = MySingleton();
                  singleton.increment();
                  setState(() {});
                },
                child: const Text("increment")),

            // Decrement Button
            ElevatedButton(
                onPressed: () {
                  MySingleton singleton = MySingleton();
                  singleton.decrement();
                  setState(() {});
                },
                child: const Text("decrement")),
            const SizedBox(height: 20),

            // Note
            const Text(
              "I have created different instances of MySingleton class in each buttons and a separate instance in the text widget to show the value [See code]",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
