import 'package:flutter/material.dart';


class Navbar {
  static AppBar make(String title) {
    return AppBar(
      elevation: 0.0,
      title: Text(
        title,
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
