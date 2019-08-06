import 'package:flutter/material.dart';

import 'package:bbta3/src/models/berita.dart';
import 'package:bbta3/src/helpers/styles.dart';


class ItemBerita extends StatelessWidget {
  final Berita berita;

  ItemBerita({this.berita});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            berita.judul,
            style: ItemBeritaStyle,
          )
        ],
      ),
    );
  }
}
