import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/question_list_view.dart';

class QuestionListController extends State<QuestionListView> implements MvcController {
  static late QuestionListController instance;
  late QuestionListView view;

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