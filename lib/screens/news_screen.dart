import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        addSemanticIndexes: true,
        [
          Container(
            color: Colors.green,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
        ],
      ),
    );
  }
}
