import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
      updateIndex(int newIndex) {
      selectedIndex = newIndex;
      setState(() {});
      }

  List examList = [
  {
  "id": 1,
  "subject":"Math Final \nExam",
  "photo":"lib/assets/images/list_exam.png",
  "time": 45,
  },
  {
  "id": 2,
  "subject":"Biology Daily \nQuiz",
  "photo":"lib/assets/images/list_exam_2.png",
  "time": 30,
  },
  {
  "id": 3,
  "subject":"Chemistry Final Test",
  "photo":"lib/assets/images/list_exam_3.png",
  "time": 60,
  },
    {
  "id": 4,
  "subject":"English Final \nExam",
  "photo":"lib/assets/images/list_exam.png",
  "time": 45,
  },
    {
  "id": 5,
  "subject":"Geography Quiz",
  "photo":"lib/assets/images/list_exam_2.png",
  "time": 60,
  },
  ];
}
