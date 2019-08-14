import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

import 'package:bbta3/src/helpers/variables.dart';
import 'package:bbta3/src/components/bbta3_card.dart';
import 'package:bbta3/src/models/berita.dart';
import 'package:bbta3/src/helpers/styles.dart';

class ItemBerita extends StatelessWidget {
  final Berita berita;
  final ChromeSafariBrowser chromeSafariBrowser =
      ChromeSafariBrowser(InAppBrowser());

  ItemBerita({this.berita});

  Future<void> openBrowser(String link) async {
    await chromeSafariBrowser.open(link, options: {
      "addShareButton": true,
      "toolbarBackgroundColor": "#FFE53935",
      "dismissButtonStyle": 1,
      "preferredBarTintColor": "#000000",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
      child: InkWell(
        onTap: () {
          openBrowser(berita.link);
        },
        child: BBTA3Card(
          cardColor: Color(BLACK),
          cardChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                berita.judul,
                style: JudulItemBeritaStyle,
                maxLines: 2,
              ),
              SizedBox(
                height: 8.0,
              ),
              berita.diterbitkan != null
                  ? Text(
                      'Diterbitkan ${berita.diterbitkan}',
                      style: SubJudulItemBeritaStyle,
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
