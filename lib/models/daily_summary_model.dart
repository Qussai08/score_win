//@dart = 2.9

import 'dart:convert';

class DailySummaryModel {
  final String generatedAt;
  final List<dynamic> summaries;

  DailySummaryModel.fromJson(Map<String, dynamic> parsedJson)
      : generatedAt = parsedJson['generatedAt'],
        summaries = List<dynamic>.from(
            parsedJson["summaries"].map((x) => Summary.fromJson(x)));
}

class Summary {
  final SportEvent sportEvent;
  final SportEventStatus sportEventStatus;

  Summary.fromJson(Map<String, dynamic> parsedJson)
      : sportEvent = SportEvent.fromJson(parsedJson['sport_event']),
        sportEventStatus =
            SportEventStatus.fromJson(parsedJson['sport_event_status']);
}

class SportEvent {
  final String id;
  final String startTime;
  final bool startTimeConfirmed;
  final SportEventContext sportEventContext;
  final List<SportEventCompetitor> competitors;

  SportEvent.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        startTime = parsedJson['start_time'],
        startTimeConfirmed = parsedJson['start_time_confirmed'],
        sportEventContext =
            SportEventContext.fromJson(parsedJson['sport_event_context']),
        competitors = List<SportEventCompetitor>.from(parsedJson['competitors']
            .map((x) => SportEventCompetitor.fromJson(x)));
}

class SportEventCompetitor {
  final String id;
  final String name;
  final String abbreviation;

  SportEventCompetitor.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        abbreviation = parsedJson['abbreviation'];
}

class SportEventConditions {}

class SportEventContext {
  final Category category;
  final Competition competition;

  SportEventContext.fromJson(Map<String, dynamic> parsedJson)
      : category = Category.fromJson(parsedJson['category']),
        competition = Competition.fromJson(parsedJson['competition']);
}

class Competition {
  final String id;
  final String name;

  Competition.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'];
}

class Category {
  final String id;
  final String name;
  Category.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'];
}

class SportEventStatus {
  final int homeScore;
  final int awayScore;

  SportEventStatus.fromJson(Map<String, dynamic> parsedJson)
      : homeScore = parsedJson['home_score'],
        awayScore = parsedJson['away_score'];
}
