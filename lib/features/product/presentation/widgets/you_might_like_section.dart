import 'package:flutter/material.dart';

class YouMightLikeSection extends StatelessWidget {
  const YouMightLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      "assets/images/You_1.png",
      "assets/images/You_2.png",
      "assets/images/You_3.png",
      "assets/images/You_4.png",
      "assets/images/You_5.png",
      "assets/images/You_6.png",
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "You Might Like",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (_, index) => card(images[index]),
          ),
        ],
      ),
    );
  }

  Widget card(String imagePath) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Text("\$17.00"),
      ],
    );
  }
}