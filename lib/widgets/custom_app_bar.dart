import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fswitch_nullsafety/fswitch_nullsafety.dart';
import 'package:score_win/screens/notifications.dart';

class CustomAppBar extends StatefulWidget {
  bool isMain = true;

  CustomAppBar(this.isMain);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool favoriteStatus = false;
  bool liveStatus = false;
  Color favoriteColor = Colors.white;
  Color liveColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SliverAppBar(
      toolbarHeight: 100.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32.0)),
      ),
      centerTitle: !widget.isMain,
      floating: true,
      backgroundColor: const Color(0xFF020612),
      title: Image.asset(
        'assets/images/logo.png',
        width: widget.isMain
            ? screenSize.width * 0.2389
            : screenSize.width * 0.347,
      ),
      actions: widget.isMain
          ? [
              FSwitch(
                open: favoriteStatus,
                openColor: Color(0xFFFF5402),
                color: Colors.white,
                sliderColor: Color(0xFF020612),
                sliderChild: Icon(
                  Icons.favorite,
                  color: favoriteColor,
                  size: 10.0,
                ),
                height: screenSize.height * 0.022,
                width: screenSize.width * 0.078,
                onChanged: (value) {
                  setState(() {
                    favoriteStatus = value;
                    if (value == true) {
                      favoriteColor = Color(0xFFFF5402);
                    } else {
                      favoriteColor = Colors.white;
                    }
                  });
                },
              ),
              const SizedBox(width: 16.0),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Column(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FSwitch(
                      open: liveStatus,
                      openColor: Color(0xFFFF5402),
                      color: Colors.white,
                      sliderColor: Color(0xFF020612),
                      height: screenSize.height * 0.022,
                      width: screenSize.width * 0.078,
                      onChanged: (value) {
                        setState(
                          () {
                            liveStatus = value;
                            if (value == true) {
                              liveColor = Color(0xFFFF5402);
                            } else {
                              liveColor = Colors.white;
                            }
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'live',
                        style: TextStyle(
                          color: liveColor,
                          fontFamily: 'ElMessiri',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16.0),
              IconButton(
                iconSize: screenSize.width * 0.09,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                icon: Icon(Icons.notifications, size: screenSize.width * 0.09),
              ),
              const SizedBox(width: 16.0),
            ]
          : [
              IconButton(
                iconSize: screenSize.width * 0.09,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                icon: Icon(Icons.notifications, size: screenSize.width * 0.09),
              ),
              const SizedBox(width: 16.0),
            ],
    );
  }
}
