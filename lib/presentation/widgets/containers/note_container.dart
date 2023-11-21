import 'package:flutter/material.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({super.key, required this.body});
  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        body,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
