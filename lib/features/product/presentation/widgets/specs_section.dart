import 'package:flutter/material.dart';

class SpecsSection extends StatelessWidget {
  const SpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Wrap(
        spacing: 10,
        children: [
          Chip(label: Text("Cotton 95%")),
          Chip(label: Text("Nylon 5%")),
        ],
      ),
    );
  }
}