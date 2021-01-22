import 'package:flutter/material.dart';

class ReusableComponent extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  //also can't workout with later stage final value to const.
  const ReusableComponent(
      {@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
