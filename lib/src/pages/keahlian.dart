import 'package:flutter/material.dart';

import 'package:bbta3/src/components/navbar.dart';


class Keahlian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar.make('BBTA3 BPPT'),
      body: SafeArea(
        child: Center(
          child: Text('HALAMAN KEAHLIAN'),
        ),
      ),
    );
  }
}
