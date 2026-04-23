import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          color: Colors.yellow,
          child: const Center(child: Text("<Image here>")),
        ),
        const Positioned(top: 10, left: 10, child: Icon(Icons.arrow_back)),
        const Positioned(top: 10, right: 10, child: Icon(Icons.favorite_border)),
      ],
    );
  }
}