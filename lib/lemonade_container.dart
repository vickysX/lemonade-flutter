import 'package:flutter/material.dart';
import 'package:lemonade/juice_maker.dart';

class LemonadeContainer extends StatelessWidget {
  const LemonadeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Tap the image to go on...",
          ),
          SizedBox(
            height: 24,
          ),
          JuiceMaker(),
        ],
      ),
    );
  }
}
