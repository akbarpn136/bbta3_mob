import 'package:flutter/material.dart';

import 'package:bbta3/src/helpers/variables.dart';
import 'package:bbta3/src/components/bbta3_card.dart';
import 'package:bbta3/src/models/berita.dart';
import 'package:bbta3/src/helpers/styles.dart';


class ItemBerita extends StatelessWidget {
  final Berita berita;

  ItemBerita({this.berita});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
      child: BBTA3Card(
        cardColor: Color(GREEN),
        cardChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              berita.judul,
              style: JudulItemBeritaStyle,
            ),
            SizedBox(height: 8.0,),
            Text(
              berita.diterbitkan,
              style: SubJudulItemBeritaStyle,
            )
          ],
        ),
      ),
    );
  }
}
