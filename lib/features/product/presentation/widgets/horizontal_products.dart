import 'package:flutter/material.dart';

class HorizontalProducts extends StatelessWidget {
  final String title;

  const HorizontalProducts({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {"image": "assets/images/Most_1.png", "badge": "New"},
      {"image": "assets/images/Most_2.png", "badge": "Sale"},
      {"image": "assets/images/Most_3.png", "badge": "Hot"},
      {"image": "assets/images/Most_4.png", "badge": null},
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // LIST
          SizedBox(
            height: 195,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final item = products[index];
                return _productCard(
                  item["image"]!,
                  item["badge"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // PRODUCT CARD
  Widget _productCard(String imagePath, String? badge) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // LIKES + BADGE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "1780",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.favorite, size: 14, color: Colors.blue),
                    ],
                  ),

                  if (badge != null)
                    _Badge(label: badge),
                ],
              ),

              const SizedBox(height: 6),


            ],
          ),
        ),
      ),
    );
  }
}

// BADGE WIDGET
class _Badge extends StatelessWidget {
  final String label;

  const _Badge({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.transparent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}