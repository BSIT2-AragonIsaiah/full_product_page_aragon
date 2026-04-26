import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [

        Container(
          height: 480,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Main.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),

  
        Positioned(
          bottom: 12,
          child: Row(
            children: List.generate(4, (index) {
              bool isActive = index == 0;

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: isActive ? 18 : 6, // dash vs dot effect
                height: 6,
                decoration: BoxDecoration(
                  color: isActive
                      ? Colors.blue
                      : Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}