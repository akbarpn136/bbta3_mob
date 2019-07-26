import 'package:flutter/material.dart';

import 'package:bbta3/src/helpers/styles.dart';


class Navbar {
  static AppBar make(String title) {
    return AppBar(
      elevation: 0.5,
      leading: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          bottom: 10.0
        ),
        child: Image.asset(
          'images/bbta3.png',
          alignment: Alignment.center,
        ),
      ),
      title: Text(
        title,
        style: HeaderNavBar,
      ),
      backgroundColor: Colors.red.shade600,
    );
  }
}
