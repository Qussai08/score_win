import 'package:flutter/material.dart';

class MatchTile extends StatelessWidget {
  Image homeTeamLogo;
  Image awayTeamLogo;
  String homeTeamLabel;
  String awayTeamLabel;
  String time;
  MatchTile({
    Key? key,
    required this.homeTeamLogo,
    required this.homeTeamLabel,
    required this.awayTeamLogo,
    required this.awayTeamLabel,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(color: Color(0xFFD4D4D4), width: 1.5))),
      height: screenSize.height * 0.133,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    homeTeamLogo,
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        homeTeamLabel,
                        style: const TextStyle(
                          fontFamily: 'Elmessiri',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Center(
                child: Text(
                  '8:00 PM',
                  style: TextStyle(
                      fontFamily: 'Elmessiri',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    awayTeamLogo,
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        awayTeamLabel,
                        style: const TextStyle(
                            fontFamily: 'Elmessiri',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
