import 'package:flutter/material.dart';

class BBTA3Card extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  BBTA3Card({this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 11.0),
      child: cardChild,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(
          top: BorderSide(
            color: cardColor,
            width: 3.0,
          ),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0.0, 3.0),
            blurRadius: 1.5,
          ),
        ],
      ),
    );
  }
}
