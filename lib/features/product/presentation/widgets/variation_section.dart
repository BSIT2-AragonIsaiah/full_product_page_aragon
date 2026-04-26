import 'package:flutter/material.dart';

class VariationSection extends StatelessWidget {
  const VariationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Variations",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  chip("Pink"),
                  const SizedBox(width: 8),
                  chip("M"),
                  const SizedBox(width: 8),
                ],
              ),
              Row(),
              Row(),
              Row(
                children: [
                  circleArrow(),
                ],
              )
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              variationImage("assets/images/Variation_1.png"),
              variationImage("assets/images/Variation_2.png"),
              variationImage("assets/images/Variation_3.png"),
            ],
          ),
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

Widget chip(String text) {
  return Chip(
    label: Text(text),
    backgroundColor: Colors.grey.shade200,
  );
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