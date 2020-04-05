import 'package:flutter/material.dart';

class ItemSelect extends StatelessWidget {
  final String label;
  final IconData icon;

  ItemSelect({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}