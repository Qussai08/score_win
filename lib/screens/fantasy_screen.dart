import 'package:flutter/material.dart';

class FantasyScreen extends StatelessWidget {
  const FantasyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        addSemanticIndexes: true,
        [
          Container(
            color: Colors.cyan,
            height: 500,
          ),
          Container(
            color: Colors.amber,
            height: 500,
          ),
        ],
      ),
    );
  }
}
