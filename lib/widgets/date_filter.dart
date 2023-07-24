import 'package:flutter/material.dart';

class DateFilter extends StatelessWidget {
  const DateFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: TabBar(
          indicatorColor: Color(0xFFFF5402),
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          tabs: [
            Text(
              'Yesterday',
              textAlign: TextAlign.center,
              softWrap: false,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Elmessiri',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Today',
              softWrap: false,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Elmessiri',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Tomorrow',
              textAlign: TextAlign.center,
              softWrap: false,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Elmessiri',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Monday 15',
              softWrap: false,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Elmessiri',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Tuesday 16',
              softWrap: false,
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Elmessiri',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700),
            )
          ]),
    );
  }
}
