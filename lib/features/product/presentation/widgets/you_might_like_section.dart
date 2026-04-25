import 'package:flutter/material.dart';

class YouMightLikeSection extends StatelessWidget {
  const YouMightLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("You Might Like",
              style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),

          GridView.builder(
            shrinkWrap: true, // ✅ IMPORTANT
            physics: const NeverScrollableScrollPhysics(), // ✅ IMPORTANT
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (_, __) => card(),
          ),
        ],
      ),
    );
  }

  Widget card() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
            child: const Center(child: Text("<Image here>")),
          ),
        ),
        const Text("\$17.00"),
      ],
    );
  }
}