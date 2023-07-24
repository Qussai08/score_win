import 'package:flutter/material.dart';
import 'package:score_win/screens/nav_screen.dart';
import 'package:score_win/widgets/side_menu_list.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF020612),
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: const ExactAssetImage('assets/images/drawer_bg.png'),
            ),
          ),
        ),
        ListView(
          children: [
            const SizedBox(height: 8.0),
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 16.0),
            Container(
              height: size.height * 0.089,
              color: Colors.white,
              child: TextButton(
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.grey),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NavScreen()));
                },
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.red,
                    ),
                    const SizedBox(width: 16.0),
                    const Text(
                      'Mahmoud Qussai',
                      style: TextStyle(
                        fontFamily: 'Elmessiri',
                        fontSize: 17.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 48.0),
                    Image.asset('assets/icons/arrow.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            SideMenuList(),
          ],
        ),
      ],
    );
  }
}
