import 'package:flutter/material.dart';

import 'package:bbta3/src/components/navbar_push.dart';

class KeahlianTertentu extends StatelessWidget {
  final String title;

  KeahlianTertentu({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarPush.make('Keahlian $title'),
      body: SafeArea(
        child: Container(
          child: Text('KEAHLIAN TERTENTU'),
        ),
      ),
    );
  }
}
