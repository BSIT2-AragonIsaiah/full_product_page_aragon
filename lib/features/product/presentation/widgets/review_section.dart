import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  Widget _buildStars(int rating, {double size = 16}) {
  return Row(
    children: List.generate(5, (index) {
      return Icon(
        index < rating ? Icons.star : Icons.star_border,
        size: size,
        color: Colors.amber,
      );
    }),
  );
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ratings & Reviews",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          // ⭐ Rating summary block
          Row(
            children: [
              _buildStars(4, size: 24),
              const SizedBox(width: 8),
              const Text("4/5"),
            ],
          ),

          const SizedBox(height: 16),

          // 🧾 Review item
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/Icon.png"),
            ),
            title: const Text("Veronika"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildStars(4, size: 16),
                const SizedBox(height: 4),
                const Text(
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis, dolor in finibus malesuada, lectus ipsum porta nunc, at iaculis arcu nisi sed mauris.",
                ),
              ],
            ),
          ),

        const SizedBox(height: 8),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Navigate to all reviews
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text("View all reviews"),
          ),
        ),

        ],
      ),
    );
  }
}