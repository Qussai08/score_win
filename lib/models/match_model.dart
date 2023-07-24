// @dart = 2.9

import 'dart:convert';

class MatchModel {
  final homeTeamId;
  final awayTeamId;
  final homeTeamName;
  final awayTeamName;

  MatchModel.fromJson(Map<String, dynamic> parsedJson)
      : homeTeamId = parsedJson['competitors[0].id'],
        homeTeamName = parsedJson['competitors[0].name'],
        awayTeamId = parsedJson['competitors[1].id'],
        awayTeamName = parsedJson['competitors[1].name'];
}
