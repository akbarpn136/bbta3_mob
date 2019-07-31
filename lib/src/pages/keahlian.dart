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
    ChromeSafariBrowser chromeSafariBrowser =
        ChromeSafariBrowser(InAppBrowser());
    isLoading = false;

    for (Map<String, dynamic> ahli in dataKeahlian) {
      String namaKeahlian = ahli['title']['rendered'];
      String imageURL = ahli['_embedded']['wp:featuredmedia'][0]['source_url'];
      String link = ahli['link'];
      Widget ahliCard = InkWell(
        borderRadius: BorderRadius.circular(10.0),
        highlightColor: Colors.blue.shade100,
        onTap: () {
          chromeSafariBrowser.open(link, options: {
            "addShareButton": true,
            "toolbarBackgroundColor": "#FFE53935",
            "dismissButtonStyle": 1,
            "preferredBarTintColor": "#000000",
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(11.5),
            child: Stack(
              children: <Widget>[
                Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                  height: 1000.0,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      namaKeahlian,
                      style: KeahlianTitleOverflow,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
          Image.asset('images/technologies.jpg'),
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
            child: isLoading
                ? buildSpinner()
                : CarouselSlider(
                    enableInfiniteScroll: false,
                    items: keahlianCard,
                    enlargeCenterPage: true,
                  ),
          ),
        ],
      ),
    );
  }
}
