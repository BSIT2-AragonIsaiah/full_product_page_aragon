import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

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
              const Text("\$17.00",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              circleArrow(),
            ],
          ),
          const SizedBox(height: 8),
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis, dolor in finibus malesuada, lectus ipsum porta nunc, at iaculis arcu nisi sed mauris."),
        ],
      ),
    );
  }
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
      color: Colors.grey,
      shape: BoxShape.circle,
    ),
    child: const Icon(Icons.turn_right_outlined, color: Colors.white),
  );
}