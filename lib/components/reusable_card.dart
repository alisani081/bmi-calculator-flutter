import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  /// Add a custom card
  ///
  /// This class adds a card with custom colour.
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        margin: EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
