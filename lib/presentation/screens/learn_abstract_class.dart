import 'package:flutter/material.dart';

// --------------------- Abstract classes --------------------
abstract class Shape {
  double calculateArea();
  double calculateParameters();

  void printDetails() {
    debugPrint("Print Details Function from abstract class");
  }
}

class Rectangle implements Shape {
  @override
  double calculateArea() {
    debugPrint("Calculate Rectangle Area");
    return 0;
  }

  @override
  double calculateParameters() {
    debugPrint("Calculate Rectangle Parameter");
    return 0;
  }

  @override
  void printDetails() {
    // If we have used extends keyword instead, then we do not necessarily need to define this method
    debugPrint("Print Details Functio from Rectangle");
  }
}

class Circle implements Shape {
  @override
  double calculateArea() {
    debugPrint("Calculate Circle Area");
    return 0;
  }

  @override
  double calculateParameters() {
    debugPrint("Calculate Circle Parameter");
    return 0;
  }

  @override
  void printDetails() {
    // If we have used extends keyword instead, then we do not necessarily need to define this method
    debugPrint("Print Details Functio from Circle");
  }
}

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
    Shape shape = Rectangle();
    shape.calculateArea();
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