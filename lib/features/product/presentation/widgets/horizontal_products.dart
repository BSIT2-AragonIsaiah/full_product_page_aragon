import 'package:flutter/material.dart';

class HorizontalProducts extends StatelessWidget {
  final String title;
  const HorizontalProducts({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),

          SizedBox(
            height: 180, // 🔥 REQUIRED
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (_, __) => card(),
            ),
          ),
        ],
      ),
    );
  }

  Widget card() {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              child: const Center(child: Text("<Image here>")),
            ),
          ),
          const Text("\$17.00"),
        ],
      ),
    );
  }
}