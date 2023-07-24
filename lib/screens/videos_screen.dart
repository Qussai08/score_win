import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        addSemanticIndexes: true,
        [
          Container(
            color: Colors.blue,
            height: 500,
          ),
          Container(
            color: Colors.black,
            height: 500,
          ),
        ],
      ),
    );
  }
}
