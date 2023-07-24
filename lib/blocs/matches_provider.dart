// @dart = 2.9
import 'package:flutter/material.dart';
import 'matches_bloc.dart';
export 'matches_bloc.dart';

class MatchesProvider extends InheritedWidget {
  final MatchesBloc bloc;

  MatchesProvider({Key key, Widget child})
      : bloc = MatchesBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static MatchesBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MatchesProvider>().bloc;
  }
}
