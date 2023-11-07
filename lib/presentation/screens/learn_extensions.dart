import 'package:flutter/material.dart';
import 'package:flutter_recap/extensions/string_extension.dart';

class LearnExtensions extends StatefulWidget {
  static const String routeName = "learn_extensions";
  const LearnExtensions({super.key});

  @override
  State<LearnExtensions> createState() => _LearnExtensionsState();
}

class _LearnExtensionsState extends State<LearnExtensions> {
  final TextEditingController _textController = TextEditingController();
  String output = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extensions"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration:
                        const InputDecoration(hintText: "enter small letters"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        output = _textController.text.capitalizeFirstLetter;
                      });
                    },
                    child: const Text("Capitalize"))
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Output: $output",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              "Enter any small letters and this will capitalize first letter using string extensions",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
