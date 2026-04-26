import 'package:flutter/material.dart';

class SpecsSection extends StatelessWidget {
  const SpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Specifications",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 16),

          Text(
            "Material",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Wrap(
            spacing: 10,
            children: [
              Chip(label: Text("Cotton 95%")),
              Chip(label: Text("Nylon 5%")),
            ],
          ),

          SizedBox(height: 16),

          Text(
            "Origin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          Chip(label: Text("EU")),

          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Size guide",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}