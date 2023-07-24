// @dart=2.9
import 'dart:async';
import 'package:rxdart/rxdart.dart';
import '../models/match_model.dart';
import '../resources/repository.dart';

class MatchesBloc {
  final _repository = Repository();
  final _match = PublishSubject<MatchModel>();
  final _itemsOutput = BehaviorSubject<Map<int, Future<MatchModel>>>();
  final _itemsFetcher = PublishSubject<int>();

  Observable<MatchModel> get match => _match.stream;
  Observable<Map<int, Future<MatchModel>>> get items => _itemsOutput.stream;

  Function(int) get fetchItem => _itemsFetcher.sink.add;

  MatchesBloc() {
    _itemsFetcher.stream.transform(_itemsTransformer()).pipe(_itemsOutput);
  }

  fetchMatch() async {
    final matches = await _repository.fetchMatch();
    _match.sink.add(matches);
  }

  clearCache() {
    return _repository.clearCache();
  }

  _itemsTransformer() {
    return ScanStreamTransformer(
      (Map<String, Future<MatchModel>> cache, String id, index) {
        print(index);
        cache[id] = _repository.fetchMatch();
        return cache;
      },
      <String, Future<MatchModel>>{},
    );
  }

  dispose() {
    _match.close();
    _itemsFetcher.close();
    _itemsOutput.close();
  }
}
