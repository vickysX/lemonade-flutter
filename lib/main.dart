import 'package:flutter/material.dart';
import 'package:lemonade/lemonade_container.dart';

const appName = "Lemonade";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 220, 244, 7)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
        ),
        body: const LemonadeContainer(),
      ),
    );
  }
}
