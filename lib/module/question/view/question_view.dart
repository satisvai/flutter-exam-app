import 'package:flutter/material.dart';
import 'package:exam_app/core.dart';
import '../controller/question_controller.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({Key? key}) : super(key: key);

  Widget build(context, QuestionController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Question"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<QuestionView> createState() => QuestionController();
}