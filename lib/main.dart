import 'package:exam_app/core.dart';
//import 'package:exam_app/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exam app',
navigatorKey: Get.navigatorKey,
      home: OnboardView(),
    );
  }
}