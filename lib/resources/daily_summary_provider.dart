// @dart = 2.9

import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:score_win/models/daily_summary_model.dart';

const _apiKey = 'hc4wxsjnrxwpnd96dt96cmpc';
const _date = '2022-09-14';
const _root =
    'https://api.sportradar.com/soccer-extended/trial/v4/en/schedules/2022-10-12/summaries.json?api_key=hc4wxsjnrxwpnd96dt96cmpc';

class DailySummaryProvider {
  Client client = Client();
  Future<DailySummaryModel> fetchDailySummary() async {
    final response = await client.get(Uri.parse(_root));
    final summary = json.decode(response.body);
    return DailySummaryModel.fromJson(summary);
  }

  Future<SportEvent> fetchSportEvent(String summaries) async {
    final encoded = json.encode(summaries);

    final sportEvent = json.decode(encoded);
    return SportEvent.fromJson(sportEvent);
  }

  buildLeagueList() {}
}
