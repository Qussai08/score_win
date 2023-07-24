// @dart = 2.9
import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:score_win/models/match_model.dart';
import 'dart:async';
import 'repository.dart';

const _apiKey = 'hc4wxsjnrxwpnd96dt96cmpc';
const _root =
    'https://api.sportradar.com/soccer-extended/trial/v4/en/competitors';

class MatchApiProvider implements Source {
  Client client = Client();

  @override
  Future<MatchModel> fetchMatch() async {
    final response = await client.get(Uri.parse(
        '$_root/sr:competitor:44/versus/sr:competitor:42/summaries.json?api_key=$_apiKey'));

    final item = json.decode(response.body);
    return MatchModel.fromJson(item);
  }
}
