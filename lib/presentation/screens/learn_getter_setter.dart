import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_recap/data/models/getter_setter_model.dart';
import 'package:flutter_recap/presentation/widgets/containers/note_container.dart';

class LearnGetterSetter extends StatefulWidget {
  static const String routeName = "learn_getter_setter";
  const LearnGetterSetter({super.key});

  @override
  State<LearnGetterSetter> createState() => _LearnGetterSetterState();
}

class _LearnGetterSetterState extends State<LearnGetterSetter> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  GetterSetterModel model = GetterSetterModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getter and Setter"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NoteContainer(
                body: "Check GetterSetter model class to know the methods"),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _firstNameController,
                    decoration: const InputDecoration(hintText: "First Name"),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: _lastNameController,
                    decoration: const InputDecoration(hintText: "Last Name"),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      model.firstName = _firstNameController.text;
                    },
                    child: const Text("SET First Name")),
                ElevatedButton(
                    onPressed: () {
                      model.lastName = _lastNameController.text;
                    },
                    child: const Text("SET Last Name")),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  log(model.name);
                },
                child: const Text("GET Full Name"))
          ],
        ),
      ),
    );
  }
}
