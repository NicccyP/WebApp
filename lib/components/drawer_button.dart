import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color,textColor;
  final IconData icon;

  const DrawerButton({
    Key key,
    this.text,
    this.press,
    this.icon,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        color: Colors.white38,
        onPressed: press,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 40),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}