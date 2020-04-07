import 'package:flutter/material.dart';

import '../constants.dart';

class BottomActionButton extends StatelessWidget {
  final Function onTap;
  final String label;
  BottomActionButton({@required this.onTap, @required this.label});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kCrimsonRedColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            label,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
