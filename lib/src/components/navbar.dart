import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:bbta3/src/helpers/styles.dart';

import 'package:bbta3/src/components/bottom_tentang.dart';

class Navbar {
  static AppBar make(String title) {
    return AppBar(
      elevation: 0.5,
      leading: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          bottom: 10.0,
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
      actions: <Widget>[
        Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(EvaIcons.questionMarkCircleOutline),
              color: Colors.white,
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return BottomTentang();
                    });
              },
            );
          },
        ),
      ],
    );
  }
}
