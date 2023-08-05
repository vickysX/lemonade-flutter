import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
