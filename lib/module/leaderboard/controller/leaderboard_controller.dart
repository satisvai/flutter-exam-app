import 'package:flutter/material.dart';
import 'package:exam_app/state_util.dart';
import '../view/leaderboard_view.dart';

class LeaderboardController extends State<LeaderboardView>
    implements MvcController {
  static late LeaderboardController instance;
  late LeaderboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List daftarPeserta = [
    {
      'id': 1,
      'rank': 01,
      'nama': 'Putri',
      'poin': 1100,
    },
    {
      'id': 2,
      'rank': 02,
      'nama': 'Surya',
      'poin': 997,
    },
    {
      'id': 3,
      'rank': 03,
      'nama': 'Rizki',
      'poin': 802,
    },
    {
      'id': 4,
      'rank': 03,
      'nama': 'Dewi',
      'poin': 717,
    },
    {
      'id': 5,
      'rank': 04,
      'nama': 'Agung',
      'poin': 701,
    },
  ];
}
