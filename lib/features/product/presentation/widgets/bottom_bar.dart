import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(Icons.favorite_border),

          const SizedBox(width: 10),

          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Add to cart"),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Buy now"),
            ),
          ),
        ],
      ),
    );
  }
}