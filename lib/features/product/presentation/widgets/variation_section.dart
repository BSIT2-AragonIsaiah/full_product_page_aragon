import 'package:flutter/material.dart';

class VariationSection extends StatelessWidget {
  const VariationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Chip(label: Text("Pink")),
          SizedBox(width: 10),
          Chip(label: Text("M")),
        ],
      ),
    );
  }
}