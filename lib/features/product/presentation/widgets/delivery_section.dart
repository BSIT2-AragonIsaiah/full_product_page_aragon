import 'package:flutter/material.dart';

class DeliverySection extends StatelessWidget {
  const DeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          ListTile(title: Text("Standard"), subtitle: Text("5-7 days")),
          ListTile(title: Text("Express"), subtitle: Text("1-2 days")),
        ],
      ),
    );
  }
}