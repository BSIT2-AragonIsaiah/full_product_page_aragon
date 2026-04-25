import 'package:flutter/material.dart';

class HorizontalProducts extends StatelessWidget {
  final String title;
  const HorizontalProducts({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final images = [
      "assets/images/Most_1.png",
      "assets/images/Most_2.png",
      "assets/images/Most_3.png",
      "assets/images/Most_4.png",
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (_, index) => card(images[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget card(String imagePath) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Expanded(
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
      ),
    );
  }
}