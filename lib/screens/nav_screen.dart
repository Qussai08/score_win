import 'package:flutter/material.dart';
import 'package:score_win/screens/fantasy_screen.dart';
import 'package:score_win/screens/matches_screen.dart';
import 'package:score_win/screens/news_screen.dart';
import 'package:score_win/screens/videos_screen.dart';
import 'package:score_win/widgets/custom_app_bar.dart';
import 'package:score_win/widgets/custom_tab_bar.dart';
import 'package:score_win/widgets/side_menu.dart';

class NavScreen extends StatefulWidget {
  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int index = 0;
  bool isMainAppBar = true;
  final List<Widget> _screens = [
    MatchesScreen(),
    NewsScreen(),
    VideosScreen(),
    FantasyScreen()
  ];
  void callback(int index, bool isMain) {
    setState(() {
      this.index = index;
      this.isMainAppBar = isMain;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      drawer: const Drawer(
        child: SideMenu(),
      ),
      bottomNavigationBar: CustomTabBar(callback: callback),
      body: CustomScrollView(
        slivers: [
          CustomAppBar(isMainAppBar),
          _screens[index],
        ],
      ),
    );
  }
}
