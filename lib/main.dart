import 'package:flutter/material.dart';
import 'on_boarding.dart';

void main() {
  runApp(const MyApp());
}

// Created Flutter Baba
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "On Boarding UI",
      home: OnBoarding(),
    );
  }
}
