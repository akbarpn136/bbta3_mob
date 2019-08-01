import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomTentang extends StatelessWidget {
  final ChromeSafariBrowser chromeSafariBrowser =
      ChromeSafariBrowser(InAppBrowser());

  Future<void> visitSite(String link) async {
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
      padding: EdgeInsets.fromLTRB(11.0, 11.0, 11.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset('images/bbta3.png'),
              SizedBox(
                width: 11.0,
              ),
              Image.asset('images/bppt.png'),
            ],
          ),
          SizedBox(
            height: 21.0,
          ),
          Text(
              'BBTA3 (Balai Besar Teknologi Aerodinamika, Aeroelastika dan Aeroakustika) merupakan transformasi dari unit kerja lama UPT LAGG dengan konsep baru dengan cakupan keahlian yang lebih luas.'),
          SizedBox(
            height: 21.0,
          ),
          Text(
              'Kawasan PUSPIPTEK, Gd. 240, Setu, Tangerang Selatan – Banten (15314)'),
          SizedBox(
            height: 21.0,
          ),
          Row(
            children: <Widget>[
              ButtonTheme(
                minWidth: 55.0,
                buttonColor: Color(0xff3b5998),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 18.0,
                  ),
                  onPressed: () => visitSite('https://www.facebook.com/BBTA3/'),
                ),
              ),
              SizedBox(width: 8.0),
              ButtonTheme(
                minWidth: 55.0,
                buttonColor: Color(0xffE1306C),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    size: 18.0,
                  ),
                  onPressed: () => visitSite('https://www.instagram.com/bbta3.bppt/'),
                ),
              ),
              SizedBox(width: 8.0),
              ButtonTheme(
                minWidth: 55.0,
                buttonColor: Color(0xff55acee),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 18.0,
                  ),
                  onPressed: () => visitSite('https://twitter.com/@bbta3_bppt'),
                ),
              ),
              SizedBox(width: 8.0),
              ButtonTheme(
                minWidth: 55.0,
                buttonColor: Color(0xffe02a20),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.youtube,
                    size: 18.0,
                  ),
                  onPressed: () => visitSite('https://www.youtube.com/channel/UCa0_hm_SiHxps1Llk_q6I1Q'),
                ),
              ),
              SizedBox(width: 8.0),
              ButtonTheme(
                minWidth: 55.0,
                buttonColor: Colors.black54,
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.slack,
                    size: 18.0,
                  ),
                  onPressed: () => visitSite('https://github.com/akbarpn136'),
                ),
              ),
              SizedBox(width: 8.0),
              ButtonTheme(
                minWidth: 55.0,
                buttonColor: Colors.black,
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: 18.0,
                  ),
                  onPressed: () => visitSite('https://github.com/akbarpn136'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
