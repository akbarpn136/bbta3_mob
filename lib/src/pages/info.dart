import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:bbta3/src/models/berita.dart';

import 'package:bbta3/src/components/item_berita.dart';
import 'package:bbta3/src/components/bbta3_card.dart';
import 'package:bbta3/src/components/build_spinner.dart';

import 'package:bbta3/src/helpers/styles.dart';
import 'package:bbta3/src/helpers/variables.dart';

import 'package:bbta3/src/services/berita_service.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool isLoading;
  List<dynamic> koleksiBerita = [];
  int jumlahBerita;
  int page = 1;

  @override
  void initState() {
    super.initState();

    isLoading = true;
    jumlahBerita = 0;

    buildBerita(page: page);
  }

  void buildBerita({int page: 1}) async {
    BeritaService beritaService = BeritaService(page: page);

    List<dynamic> berita = await beritaService.readBerita();
    for (var brt in berita) {
      koleksiBerita.add(brt);
    }

    isLoading = false;
    if (koleksiBerita.first.containsKey('error')) {
      setState(() {
        jumlahBerita = -1;
      });
    } else {
      setState(() {
        jumlahBerita = koleksiBerita.length + 1;
      });
    }
  }

  Widget emptyOrErrorWidget() {
    DateFormat formatter = DateFormat('dd-MM-yyyy');

    if (jumlahBerita == 0) {
      return isLoading
          ? BuildSpinner()
          : Container(
              margin: EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
              child: BBTA3Card(
                cardColor: Color(BLUE),
                cardChild: Text('Data masih kosong'),
              ),
            );
    } else if (jumlahBerita == -1) {
      return isLoading
          ? BuildSpinner()
          : Container(
              margin: EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
              child: BBTA3Card(
                cardColor: Color(RED),
                cardChild: Text(koleksiBerita.first['error']),
              ),
            );
    } else {
      return isLoading
          ? BuildSpinner()
          : Expanded(
              child: ListView.builder(
                itemCount: jumlahBerita,
                itemBuilder: (BuildContext context, int index) {
                  if (index >= jumlahBerita - 1) {
                    return Container(
                      margin: EdgeInsets.only(left: gap, right: gap, bottom: gap),
                      child: RaisedButton(
                        onPressed: () {
                          page++;
                          print(page);
                          buildBerita(page: page);
                        },
                        color: Color(BLACK),
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'MUAT LAGI',
                          style: TeksTombol,
                        ),
                      ),
                    );
                  } else {
                    DateTime dateTime =
                      DateTime.parse(koleksiBerita[index]['date']);

                    return ItemBerita(
                      berita: Berita(
                        judul: koleksiBerita[index]['title']['rendered'],
                        diterbitkan: formatter.format(dateTime),
                        link: koleksiBerita[index]['link'],
                      ),
                    );
                  }
                },
              ),
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(gap),
            child: Text(
              'Berita BBTA3',
              style: HeaderBeritaStyle,
            ),
          ),
          emptyOrErrorWidget(),
        ],
      ),
    );
  }
}
