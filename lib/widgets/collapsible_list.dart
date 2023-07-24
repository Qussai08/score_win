import 'package:flutter/material.dart';
import 'package:score_win/resources/daily_summary_provider.dart';
import 'package:score_win/widgets/match_tile.dart';

class CollapsibleList extends StatefulWidget {
  String id;

  @override
  State<CollapsibleList> createState() => _CollapsibleListState();
  CollapsibleList(@required this.id);
}

class _CollapsibleListState extends State<CollapsibleList> {
  var dailySummaries;
  int length = 0;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    dailySummaries = await DailySummaryProvider().fetchDailySummary();
    if (dailySummaries != null) {
      setState(() {
        isLoaded = true;
        length = dailySummaries.summaries.length;
      });
    }
  }

  // List championsLeague = [];

  // buildList() {
  //   for (int index = 0; index < length; index++) {
  //     if ((dailySummaries
  //             .summaries[index].sportEvent.sportEventContext.competition.id) ==
  //         widget.id) {
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

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: ListView.builder(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: length,
        itemBuilder: (context, index) {
          if ((dailySummaries.summaries[index].sportEvent.sportEventContext
                  .competition.id) ==
              widget.id) {
            print(
                '${dailySummaries.summaries[0].sportEvent.competitors[0].name}');

            return MatchTile(
              homeTeamLogo: Image.asset('assets/teams/chelsea.png'),
              homeTeamLabel:
                  '${dailySummaries.summaries[index].sportEvent.competitors[0].name}',
              awayTeamLogo: Image.asset('assets/teams/arsenal.png'),
              awayTeamLabel:
                  '${dailySummaries.summaries[index].sportEvent.competitors[1].name}',
              time: '8:00 PM',
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
