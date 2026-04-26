import 'package:flutter/material.dart';

class YouMightLikeSection extends StatelessWidget {
  const YouMightLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "assets/images/You_1.png",
      "assets/images/You_2.png",
      "assets/images/You_3.png",
      "assets/images/You_4.png",
      "assets/images/You_5.png",
      "assets/images/You_6.png",
    ];

    return Padding(
      padding: const EdgeInsets.all(16), // ✅ main section padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "You Might Like",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),

          const SizedBox(height: 5),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 12,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              return _item(items[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _item(String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // IMAGE BOX WITH POLAROID EFFECT
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: SizedBox(
              height: 190,
              width: double.infinity,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        const SizedBox(height: 7.5),

        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12),
        ),

        const SizedBox(height: 4),

        const Text(
          "\$17.00",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
