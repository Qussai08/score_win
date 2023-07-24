import 'package:flutter/material.dart';
import 'package:score_win/screens/contact_us.dart';
import 'package:score_win/widgets/side_menu_button.dart';

class SideMenuList extends StatelessWidget {
  const SideMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SideMenuButton(
            imageAsset: 'assets/icons/favorite.png',
            label: 'Favourite',
            onTap: () {}),
        const SizedBox(height: 16.0),
        SideMenuButton(
            imageAsset: 'assets/icons/info.png',
            label: 'About App',
            onTap: () {}),
        const SizedBox(height: 16.0),
        SideMenuButton(
          imageAsset: 'assets/icons/mail.png',
          label: 'Contact Us',
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ContactUs()));
          },
        ),
        const SizedBox(height: 16.0),
        SideMenuButton(
            imageAsset: 'assets/icons/terms.png',
            label: 'Terms And Conditions',
            onTap: () {}),
        const SizedBox(height: 16.0),
        SideMenuButton(
            imageAsset: 'assets/icons/settings.png',
            label: 'Settings',
            onTap: () {}),
        const SizedBox(height: 16.0),
        SideMenuButton(
            imageAsset: 'assets/icons/prize.png',
            label: 'Prize Terms And Conditions',
            onTap: () {}),
        const SizedBox(height: 16.0),
        SideMenuButton(
            imageAsset: 'assets/icons/logout.png',
            label: 'Logout',
            color: Color(0xFFFF5402),
            onTap: () {}),
      ],
    );
  }
}
