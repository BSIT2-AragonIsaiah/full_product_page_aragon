import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Icon.png"),
),
        title: Text("Veronika"),
        subtitle: Text("Nice product!"),
      ),
    );
  }
}