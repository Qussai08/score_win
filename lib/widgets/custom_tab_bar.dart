import 'package:flutter/material.dart';
import '../screens/nav_screen.dart';

int selectedIndex = 0;

class CustomTabBar extends StatefulWidget {
  Function callback;

  CustomTabBar({super.key, required this.callback});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      selectedIndex == 0
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 55.0,
                  onPressed: () {},
                  icon: CircleAvatar(
                    maxRadius: 60.0,
                    backgroundColor: const Color(0xFFFF5402),
                    child: Image.asset(
                      'assets/icons/pitch-white.png',
                      scale: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Matches',
                  style: TextStyle(
                    color: Color(0xFFFF5402),
                    fontFamily: 'Elmessiri',
                    fontWeight: FontWeight.w900,
                    fontSize: 13.0,
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() => selectedIndex = 0);
                    widget.callback(0, true);
                  },
                  icon: Image.asset(
                    'assets/icons/pitch-white.png',
                    scale: 1,
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFFA5A5A5),
                  ),
                ),
                const Text(
                  'Matches',
                  style: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontFamily: 'Elmessiri',
                      fontWeight: FontWeight.w900,
                      fontSize: 13.0,
                      textBaseline: TextBaseline.alphabetic),
                )
              ],
            ),
      selectedIndex == 1
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 55.0,
                  onPressed: () {},
                  icon: CircleAvatar(
                    maxRadius: 60.0,
                    backgroundColor: const Color(0xFFFF5402),
                    child: Image.asset(
                      'assets/icons/news.png',
                      scale: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'News',
                  style: TextStyle(
                    color: Color(0xFFFF5402),
                    fontFamily: 'Elmessiri',
                    fontWeight: FontWeight.w900,
                    fontSize: 13.0,
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() => selectedIndex = 1);
                    widget.callback(1, false);
                  },
                  icon: Image.asset(
                    'assets/icons/news.png',
                    scale: 1,
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFFA5A5A5),
                  ),
                ),
                const Text(
                  'News',
                  style: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontFamily: 'Elmessiri',
                      fontWeight: FontWeight.w900,
                      fontSize: 13.0,
                      textBaseline: TextBaseline.alphabetic),
                )
              ],
            ),
      selectedIndex == 2
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 55.0,
                  onPressed: () {},
                  icon: CircleAvatar(
                    maxRadius: 60.0,
                    backgroundColor: const Color(0xFFFF5402),
                    child: Image.asset(
                      'assets/icons/video.png',
                      scale: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Videos',
                  style: TextStyle(
                    color: Color(0xFFFF5402),
                    fontFamily: 'Elmessiri',
                    fontWeight: FontWeight.w900,
                    fontSize: 13.0,
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() => selectedIndex = 2);
                    widget.callback(2, false);
                  },
                  icon: Image.asset(
                    'assets/icons/video.png',
                    scale: 1,
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFFA5A5A5),
                  ),
                ),
                const Text(
                  'Videos',
                  style: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontFamily: 'Elmessiri',
                      fontWeight: FontWeight.w900,
                      fontSize: 13.0,
                      textBaseline: TextBaseline.alphabetic),
                )
              ],
            ),
      selectedIndex == 3
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 55.0,
                  onPressed: () {},
                  icon: CircleAvatar(
                    maxRadius: 60.0,
                    backgroundColor: const Color(0xFFFF5402),
                    child: Image.asset(
                      'assets/icons/ball.png',
                      scale: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Fantasy',
                  style: TextStyle(
                    color: Color(0xFFFF5402),
                    fontFamily: 'Elmessiri',
                    fontWeight: FontWeight.w900,
                    fontSize: 13.0,
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() => selectedIndex = 3);
                    widget.callback(3, false);
                  },
                  icon: Image.asset(
                    'assets/icons/ball.png',
                    scale: 1,
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFFA5A5A5),
                  ),
                ),
                const Text(
                  'Fantasy',
                  style: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontFamily: 'Elmessiri',
                      fontWeight: FontWeight.w900,
                      fontSize: 13.0,
                      textBaseline: TextBaseline.alphabetic),
                )
              ],
            ),
    ];

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.15,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: screenSize.height * 0.085,
            margin: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
              color: Color(0xFF020612),
              borderRadius: BorderRadius.all(Radius.circular(48.0)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 41, 40, 40),
                  blurRadius: 20.0,
                  offset: Offset.zero,
                  spreadRadius: 5.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: items,
            ),
          ),
        ],
      ),
    );
  }
}
