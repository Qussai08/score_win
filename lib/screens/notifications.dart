import 'package:flutter/material.dart';
import 'package:score_win/screens/nav_screen.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100.0,
            shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(32.0)),
            ),
            centerTitle: false,
            floating: true,
            backgroundColor: const Color(0xFF020612),
            title: Row(children: const [
              Icon(Icons.notifications),
              SizedBox(width: 8.0),
              Text(
                'Notifications',
                style: TextStyle(
                  fontFamily: 'Elmessiri',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )
            ]),
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NavScreen()));
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              addSemanticIndexes: true,
              [
                SizedBox(height: screenSize.width * 0.0454),
                notfication(
                    'A New Goal',
                    'Mo Salah has scored a goal for Liverpool',
                    '3 Min',
                    context),
                SizedBox(height: screenSize.width * 0.0454),
                notfication('VAR Decision',
                    'Goal cancelled by VAR for Liverpool', '1 Min', context),
              ],
            ),
          )
        ],
      ),
    );
  }

  notfication(String title, String content, String time, context) {
    final screenSize = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: screenSize.width * 0.0305,
          height: screenSize.height * 0.104,
          color: Color(0xFFFF5402),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            height: screenSize.height * 0.104,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16.0),
                  width: screenSize.width * 0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFFFF5402),
                          fontFamily: 'Elmessiri',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        content,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'Elmessiri',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.noise_control_off_outlined,
                      color: Color(0xFFFF5402),
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontFamily: 'Elmessiri',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
