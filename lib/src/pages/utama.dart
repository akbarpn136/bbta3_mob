import 'package:flutter/material.dart';

import 'package:bbta3/src/pages/keahlian.dart';


class Utama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'FiraSans'
      ),
      home: Keahlian(),
    );
  }
}
