import 'package:flutter/material.dart';


class Pelanggan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'images/underconstruction.png',
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
