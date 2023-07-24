import 'package:flutter/material.dart';

class SideMenuButton extends StatelessWidget {
  String label;
  String imageAsset;
  Function onTap;
  Color color;
  SideMenuButton(
      {Key? key,
      required this.imageAsset,
      required this.label,
      this.color = Colors.white,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.0446,
      color: Colors.white.withOpacity(0.2),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith((states) => Colors.grey),
        ),
        onPressed: () => onTap(),
        child: Row(children: [
          const SizedBox(width: 16.0),
          Image.asset(
            imageAsset,
            color: color,
          ),
          const SizedBox(width: 16.0),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Elmessiri',
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          )
        ]),
      ),
    );
  }
}
