import 'package:flutter/material.dart';

class SpecsSection extends StatelessWidget {
  const SpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Specifications",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            "Material",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          const Wrap(
            spacing: 10,
            children: [
              Chip(label: Text("Cotton 95%")),
              Chip(label: Text("Nylon 5%")),
            ],
          ),

          const SizedBox(height: 16),

          const Text(
            "Origin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          const Chip(label: Text("EU")),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Size guide",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              circleArrow(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget circleArrow() {
  return Container(
    width: 40,
    height: 40,
    decoration: const BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
    ),
    child: const Icon(Icons.arrow_forward, color: Colors.white),
  );
}