import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:bbta3/src/components/navbar.dart';

import 'package:bbta3/src/pages/keahlian.dart';
import 'package:bbta3/src/pages/info.dart';
import 'package:bbta3/src/pages/pelanggan.dart';

class Utama extends StatefulWidget {
  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  int _selectedIndex = 0;
  List<Widget> _listPage = [
    Keahlian(),
    Info(),
    Pelanggan(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FiraSans'),
      home: Scaffold(
        appBar: Navbar.make('BBTA3 BPPT', () {
          
        }),
        body: _listPage.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red.shade600,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.briefcaseOutline),
              title: Text('Keahlian'),
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.bookOpenOutline),
              title: Text('Info'),
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.peopleOutline),
              title: Text('Pelanggan'),
            ),
          ],
          onTap: (int idx) {
            setState(() {
              _selectedIndex = idx;
            });
          },
        ),
      ),
    );
  }
}
