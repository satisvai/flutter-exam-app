import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/exam_list_view.dart';

class ExamListController extends State<ExamListView> implements MvcController {
  static late ExamListController instance;
  late ExamListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> englishExam = [
    {
      "id": 1,
      "subject": "English Exam",
      "time": 60,
      "questions": [
        {
          "question":
              "Choose the correct form of the verb: He _______ to the park every morning.",
          "options": {
            "a": "go",
            "b": "goes",
            "c": "going",
            "d": "is going",
            "e": "has gone"
          },
          "answer": "b"
        },
        {
          "question":
              "Fill in the blank: I haven't seen him _______ a long time.",
          "options": {
            "a": "since",
            "b": "for",
            "c": "during",
            "d": "in",
            "e": "on"
          },
          "answer": "a"
        },
        {
          "question": "Choose the correct word: The cat is _______ the table.",
          "options": {
            "a": "in",
            "b": "on",
            "c": "at",
            "d": "under",
            "e": "above"
          },
          "answer": "b"
        },
        {
          "question":
              "Choose the correct form of the verb: They _______ to the movies last night.",
          "options": {
            "a": "go",
            "b": "goes",
            "c": "going",
            "d": "is going",
            "e": "went"
          },
          "answer": "e"
        },
        {
          "question": "Choose the correct word: I want to buy _______ book.",
          "options": {"a": "a", "b": "an", "c": "the", "d": "some", "e": "any"},
          "answer": "a"
        },
        {
          "question":
              "Choose the correct form of the verb: She _______ to the beach every summer.",
          "options": {
            "a": "go",
            "b": "goes",
            "c": "going",
            "d": "is going",
            "e": "has gone"
          },
          "answer": "b"
        },
        {
          "question":
              "Fill in the blank: I have been studying English _______ five years.",
          "options": {
            "a": "since",
            "b": "for",
            "c": "during",
            "d": "in",
            "e": "on"
          },
          "answer": "b"
        },
        {
          "question": "Choose the correct word: The cat is _______ the table.",
          "options": {
            "a": "in",
            "b": "on",
            "c": "at",
            "d": "under",
            "e": "above"
          },
          "answer": "b"
        },
        {
          "question":
              "Choose the correct form of the verb: They _______ to the movies last night.",
          "options": {
            "a": "go",
            "b": "goes",
            "c": "going",
            "d": "is going",
            "e": "went"
          },
          "answer": "e"
        },
        {
          "question": "Choose the correct word: I want to buy _______ book.",
          "options": {"a": "a", "b": "an", "c": "the", "d": "some", "e": "any"},
          "answer": "a"
        },
      ]
    },
  ];
}
