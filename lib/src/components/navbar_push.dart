import 'package:flutter/material.dart';


class NavbarPush {
  static AppBar make(String title) {
    return AppBar(
      elevation: 0.5,
      title: Text(
        title,
      ),
      backgroundColor: Colors.red.shade600,
    );
  }
}
