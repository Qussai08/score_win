import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:collapsible/collapsible.dart';
import 'package:score_win/widgets/collapsible_league_tile.dart';
import 'package:score_win/widgets/date_filter.dart';

import '../resources/daily_summary_provider.dart';
import '../widgets/match_tile.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  bool collapsed1 = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SliverList(
      delegate: SliverChildListDelegate(
        addSemanticIndexes: true,
        [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 5.0, offset: Offset.zero),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(48.0)),
            ),
            height: MediaQuery.of(context).size.height * 0.047,
            child: const DateFilter(),
          ),
          Column(
            children: [
              CollapsibleLeagueTile(
                leagueLogo: Image.asset('assets/leagues/premier-league.png'),
                leagueTitle: 'UEFA Champions League',
                LeagueId: "sr:competition:7",
                matchesCount: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // var dailySummaries;
  // int length = 0;
  // bool isLoaded = false;

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  // getData() async {
  //   dailySummaries = await DailySummaryProvider().fetchDailySummary();
  //   if (dailySummaries != null) {
  //     setState(() {
  //       isLoaded = true;
  //       length = dailySummaries.summaries.length;
  //     });
  //   }
  // }

  // List championsLeague = [];

  // buildLists() {
  //   for (int index = 0; index < length; index++) {
  //     if ((dailySummaries
  //             .summaries[index].sportEvent.sportEventContext.competition.id) ==
  //         '') {
  //       championsLeague.add(MatchTile(
  //         homeTeamLogo: Image.asset('assets/teams/chelsea.png'),
  //         homeTeamLabel:
  //             '${dailySummaries.summaries[index].sportEvent.competitors[0].name}',
  //         awayTeamLogo: Image.asset('assets/teams/arsenal.png'),
  //         awayTeamLabel:
  //             '${dailySummaries.summaries[index].sportEvent.competitors[1].name}',
  //         time: '8:00 PM',
  //       ));
  //     }
  //   }
  // }
}
