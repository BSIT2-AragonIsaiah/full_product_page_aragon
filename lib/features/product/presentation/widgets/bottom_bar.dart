import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          // ❤️ Favorite icon
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.favorite_border, size: 20),
          ),

          const SizedBox(width: 10),

          // 🛒 Add to cart
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Add to cart"),
            ),
          ),

          const SizedBox(width: 10),

          // ⚡ Buy now
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Buy now"),
            ),
          ),
        ],
      ),
    );
  }
}