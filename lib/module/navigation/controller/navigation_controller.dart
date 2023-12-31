import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/navigation_view.dart';

class NavigationController extends State<NavigationView> implements MvcController {
  static late NavigationController instance;
  late NavigationView view;

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
}