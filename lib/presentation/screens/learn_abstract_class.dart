import 'dart:developer';

import 'package:flutter/material.dart';

// --------------------- Abstract classes --------------------
abstract class Hello {
  String myName = "Jatin";

  void display() {
    log("Display method in abstract class");
  }
}

class Hi extends Hello {
  @override
  String myName = "Saini ji";

  @override
  void display() {
    log(myName);
  }
}

class Hi2 extends Hi {}

// ---------------------- Widgets -----------------------

class LearnAbstractClassScreen extends StatefulWidget {
  static const String routeName = "learn_abstract_class_screen";
  const LearnAbstractClassScreen({super.key});

  @override
  State<LearnAbstractClassScreen> createState() =>
      _LearnAbstractClassScreenState();
}

class _LearnAbstractClassScreenState extends State<LearnAbstractClassScreen> {
  @override
  void initState() {
    learn();
    super.initState();
  }

  learn() {
    Hi2 hi = Hi2();
    hi.display();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abstract class"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  learn();
                },
                child: const Text("Run"))
          ],
        ),
      ),
    );
  }
}
