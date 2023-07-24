// @dart=2.9

import 'dart:async';
import 'package:score_win/models/match_model.dart';

import 'match_api_provider.dart';

class Repository {
  List<Source> sources = <Source>[
    // newsDbProvider,
    MatchApiProvider(),
  ];
  List<Cache> caches = <Cache>[
    // newsDbProvider,
  ];
  Future<MatchModel> fetchMatch() {
    return sources[1].fetchMatch();
  }

  clearCache() async {
    for (var cache in caches) {
      await cache.clear();
    }
  }
}

abstract class Source {
  Future<MatchModel> fetchMatch();
}

abstract class Cache {
  Future<int> addItem(MatchModel item);
  Future<int> clear();
}
