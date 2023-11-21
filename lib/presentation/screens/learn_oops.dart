import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_recap/data/models/encapsulation.dart';
import 'package:flutter_recap/presentation/widgets/containers/note_container.dart';

class LearnOOPS extends StatefulWidget {
  static const String routeName = "learn_oops";
  const LearnOOPS({super.key});

  @override
  State<LearnOOPS> createState() => _LearnOOPSState();
}

class _LearnOOPSState extends State<LearnOOPS> {
  final TextEditingController _controller = TextEditingController();
  EncapsulationTest encap = EncapsulationTest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn OOPS"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NoteContainer(
                body:
                    "Note that we cannot access the fields of the EncapsulationTest class directly, We need to use the getter and setter method to access them."),
            const SizedBox(height: 50),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: "Enter data to set"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      encap.setVal(_controller.text);
                    },
                    child: const Text("SET Data")),
                ElevatedButton(
                    onPressed: () {
                      String val = encap.getVal();
                      log(val);
                    },
                    child: const Text("GET Data"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
