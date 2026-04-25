import 'package:flutter/material.dart';

class VariationSection extends StatelessWidget {
  const VariationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          variationImage("assets/images/Variation_1.png"),
          const SizedBox(width: 10),
          variationImage("assets/images/Variation_2.png"),
          const SizedBox(width: 10),
          variationImage("assets/images/Variation_3.png"),
          const SizedBox(width: 10),
          
          const Chip(label: Text("Pink")),
          const SizedBox(width: 10),
          const Chip(label: Text("M")),
        ],
      ),
    );
  }
}

Widget variationImage(String path) {
  return Container(
    width: 60,
    height: 60,
    margin: const EdgeInsets.only(right: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    ),
  );
}