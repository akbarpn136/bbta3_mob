import 'package:flutter/material.dart';

import 'package:bbta3/src/models/berita.dart';
import 'package:bbta3/src/components/item_berita.dart';
import 'package:bbta3/src/helpers/styles.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Berita BBTA3',
              style: HeaderBeritaStyle,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ItemBerita(
                  berita: Berita(
                    judul: 'Judul Berita #$index',
                    diterbitkan: '20 Mei 2019',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
