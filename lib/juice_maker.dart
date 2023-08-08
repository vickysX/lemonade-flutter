import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// This is an enhanced enum
enum LemonadeSteps {
  pick(
    path: "assets\\lemon_tree.svg",
    instruction: "Let's pick a lemon",
  ),
  squeeze(
    path: "assets\\lemon_squeeze.svg",
    instruction: "I wanna squeeze you!",
  ),
  drink(
    path: "assets\\lemon_drink.svg",
    instruction: "Drink and enjoy!",
  ),
  restart(
    path: "assets\\lemon_restart.svg",
    instruction: "Ops, the juice is over, restart again!",
  );

  const LemonadeSteps({required this.path, required this.instruction});

  final String path;
  final String instruction;
}

class JuiceMaker extends StatefulWidget {
  const JuiceMaker({super.key});

  @override
  State<JuiceMaker> createState() {
    return _JuiceMakerState();
  }
}

class _JuiceMakerState extends State<JuiceMaker> {
  var currentStep = LemonadeSteps.pick;

  void makeLemonade() {
    setState(() {
      switch (currentStep) {
        case LemonadeSteps.pick:
          currentStep = LemonadeSteps.squeeze;
        case LemonadeSteps.squeeze:
          currentStep = LemonadeSteps.drink;
        case LemonadeSteps.drink:
          currentStep = LemonadeSteps.restart;
        case LemonadeSteps.restart:
          currentStep = LemonadeSteps.pick;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: makeLemonade,
      child: Column(
        children: [
          SvgPicture.asset(currentStep.path),
          Text(
            currentStep.instruction,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
