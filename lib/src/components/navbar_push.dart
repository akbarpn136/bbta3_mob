import 'package:flutter/material.dart';

import 'package:bbta3/src/helpers/styles.dart';


class NavbarPush {
  static AppBar make(String title) {
    return AppBar(
      elevation: 0.5,
      title: Text(
        title,
        style: HeaderNavBar,
      ),
      backgroundColor: Colors.red.shade600,
    );
  }
}
