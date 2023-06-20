import 'package:flutter/material.dart';
import 'package:exam_app/core.dart';
import 'package:exam_app/constant/colors.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import '../controller/navigation_controller.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  Widget build(context, NavigationController controller) {
    controller.view = this;

    return /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
        DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [
            HomeView(),
            ExamListView(),
            LeaderboardView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: controller.selectedIndex,
          iconSize: 30,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (newIndex) => controller.updateIndex(newIndex),
          items: [
            FlashyTabBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
                activeColor: thirdPurple,
                inactiveColor: primayPurple),
            FlashyTabBarItem(
                icon: const Icon(Icons.article),
                title: const Text('Exam'),
                activeColor: thirdPurple,
                inactiveColor: primayPurple),
            FlashyTabBarItem(
                icon: const Icon(Icons.leaderboard),
                title: const Text('Leaderboard'),
                activeColor: thirdPurple,
                inactiveColor: primayPurple),
            FlashyTabBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Profile'),
                activeColor: thirdPurple,
                inactiveColor: primayPurple),
          ],
        ),
      ),
    );
  }

  @override
  State<NavigationView> createState() => NavigationController();
}
