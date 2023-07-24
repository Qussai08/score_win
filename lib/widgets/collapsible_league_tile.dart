import 'package:flutter/material.dart';
import 'package:collapsible/collapsible.dart';
import 'package:flutter/rendering.dart';
import 'package:score_win/widgets/collapsible_list.dart';
import 'package:score_win/widgets/match_tile.dart';
import 'package:score_win/resources/daily_summary_provider.dart';

class CollapsibleLeagueTile extends StatefulWidget {
  Image leagueLogo;
  String leagueTitle;
  String LeagueId;
  int matchesCount;

  CollapsibleLeagueTile(
      {Key? key,
      required this.leagueLogo,
      required this.leagueTitle,
      required this.LeagueId,
      required this.matchesCount})
      : super(key: key);

  @override
  State<CollapsibleLeagueTile> createState() => _CollapsibleLeagueTileState();
}

class _CollapsibleLeagueTileState extends State<CollapsibleLeagueTile> {
  bool collapsed = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
              side: MaterialStateProperty.resolveWith((states) =>
                  const BorderSide(color: Color(0xFFD4D4D4), width: 1.0))),
          onPressed: () {
            setState(
              () {
                collapsed = !collapsed;
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: widget.leagueLogo,
                  ),
                  Text(
                    widget.leagueTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Elmessiri',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: screenSize.height * 0.095,
                    height: screenSize.height * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: const Color(0xFFFBD01B)),
                    child: Center(
                      child: Text(
                        '${widget.matchesCount} matches',
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Elmessiri',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(
                      !collapsed
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(color: Color(0xFFD4D4D4), width: 1.5))),
          child: Collapsible(
            collapsed: collapsed,
            maintainAnimation: true,
            axis: CollapsibleAxis.vertical,
            child: CollapsibleList(widget.LeagueId),
          ),
        ),
      ],
    );
  }
}
