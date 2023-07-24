// @dart = 2.9

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:score_win/resources/daily_summary_provider.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: ListView.builder(
          itemCount: length,
          itemBuilder: (context, index) {
            if ((dailySummaries.summaries[index].sportEvent.sportEventContext
                    .competition.id) ==
                "sr:competition:7") {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                          '${dailySummaries.summaries[index].sportEvent.competitors[0].name}'),
                      Text(
                          '${dailySummaries.summaries[index].sportEventStatus.homeScore}'),
                    ],
                  ),
                  Text('VS'),
                  Column(
                    children: [
                      Text(
                          '${dailySummaries.summaries[index].sportEvent.competitors[1].name}'),
                      Text(
                          '${dailySummaries.summaries[index].sportEventStatus.awayScore}'),
                    ],
                  )
                ],
              );
            } else {
              return Container();
            }
          }),
    );
  }
}
