import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

import 'package:bbta3/src/helpers/styles.dart';
import 'package:bbta3/src/services/ahli.dart';


class Keahlian extends StatefulWidget {
  @override
  _KeahlianState createState() => _KeahlianState();
}

class _KeahlianState extends State<Keahlian> {
  List<Widget> keahlianCard = [];
  bool isLoading;

  @override
  initState() {
    super.initState();
    buildCardKeahlian();
    isLoading = true;
  }

  void buildCardKeahlian() async {
    Ahli keahlian = Ahli();
    List<dynamic> dataKeahlian = await keahlian.readKeahlian();
    ChromeSafariBrowser chromeSafariBrowser = ChromeSafariBrowser(InAppBrowser());
    isLoading = false;

    for (Map<String, dynamic> ahli in dataKeahlian) {
      String namaKeahlian = ahli['title']['rendered'];
      String imageURL = ahli['_embedded']['wp:featuredmedia'][0]['source_url'];
      String link = ahli['link'];
      Widget ahliCard = GestureDetector(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Card(
              elevation: 1.5,
              child: Image.network(imageURL, fit: BoxFit.fitHeight,),
            ),
            Text(
              namaKeahlian,
              style: KeahlianTitleOverflow,
            ),
          ],
        ),
        onTap: () {
          chromeSafariBrowser.open(link, options: {
            "addShareButton": true,
            "toolbarBackgroundColor": "#FFE53935",
            "dismissButtonStyle": 1,
            "preferredBarTintColor": "#000000",
          });
        },
      );

      setState(() {
        keahlianCard.add(ahliCard);
      });
    }
  }

  Widget buildSpinner() {
    return SpinKitFadingFour(
      color: Colors.blue.shade300,
      size: 47.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(
                top: 25.0,
              ),
              child: Image.asset('images/technologies.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              margin: EdgeInsets.only(
                top: 15.0,
              ),
              child: Text(
                'Keahlian Kami',
                style: KeahlianTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: isLoading ? buildSpinner() : CarouselSlider(
              enableInfiniteScroll: false,
              items: keahlianCard,
            ),
          ),
        ],
      ),
    );
  }
}
