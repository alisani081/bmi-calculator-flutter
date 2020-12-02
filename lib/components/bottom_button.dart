import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(title, style: kBottomTextStyle),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
