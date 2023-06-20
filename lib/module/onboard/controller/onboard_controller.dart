import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/onboard_view.dart';

class OnboardController extends State<OnboardView> implements MvcController {
  static late OnboardController instance;
  late OnboardView view;

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