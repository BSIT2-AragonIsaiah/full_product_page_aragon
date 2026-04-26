import 'package:flutter/material.dart';

import '../widgets/image_section.dart';
import '../widgets/price_section.dart';
import '../widgets/variation_section.dart';
import '../widgets/specs_section.dart';
import '../widgets/delivery_section.dart';
import '../widgets/review_section.dart';
import '../widgets/horizontal_products.dart';
import '../widgets/you_might_like_section.dart';
import '../widgets/bottom_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // WHOLE PAGE SCROLL
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ImageSection(),
                  PriceSection(),
                  VariationSection(),
                  SpecsSection(),
                  DeliverySection(),
                  ReviewSection(),

                  // ONLY horizontal section
                  HorizontalProducts(
                    title: "Most Popular",
                    titleFontSize: 24,
                    titleFontWeight: FontWeight.w900,
                  ),


                  // PART OF vertical scroll
                  YouMightLikeSection(),
                ],
              ),
            ),
          ),

          // fixed bottom
          BottomBar(),
        ],
      ),
    );
  }
}