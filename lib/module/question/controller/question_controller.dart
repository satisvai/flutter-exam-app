import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/question_view.dart';

class QuestionController extends State<QuestionView> implements MvcController {
  static late QuestionController instance;
  late QuestionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}