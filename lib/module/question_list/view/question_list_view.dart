import 'package:flutter/material.dart';
import 'package:exam_app/core.dart';
import '../controller/question_list_controller.dart';

class QuestionListView extends StatefulWidget {
  const QuestionListView({Key? key}) : super(key: key);

  Widget build(context, QuestionListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("QuestionList"),
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
  State<QuestionListView> createState() => QuestionListController();
}