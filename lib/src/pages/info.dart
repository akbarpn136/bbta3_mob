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
  List<dynamic> koleksiBerita;
  int jumlahBerita;

  @override
  void initState() {
    super.initState();

    isLoading = true;
    jumlahBerita = 0;

    buildBerita();
  }

  void buildBerita() async {
    BeritaService beritaService = BeritaService();

    koleksiBerita = await beritaService.readBerita();

    if (koleksiBerita.first.containsKey('error')) {
      setState(() {
        isLoading = false;
        jumlahBerita = -1;
      });
    } else {
      setState(() {
        isLoading = false;
        jumlahBerita = koleksiBerita.length;
      });
    }
  }

  Widget emptyOrErrorWidget() {
    DateFormat formatter = DateFormat('dd-MM-yyyy');

    if (jumlahBerita == 0) {
      return isLoading ? BuildSpinner() : Container(
        margin: EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
        child: BBTA3Card(
          cardColor: Color(BLUE),
          cardChild: Text('Data masih kosong'),
        ),
      );
    } else if (jumlahBerita == -1) {
      return isLoading ? BuildSpinner() : Container(
        margin: EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
        child: BBTA3Card(
          cardColor: Color(RED),
          cardChild: Text(koleksiBerita.first['error']),
        ),
      );
    } else {
      return isLoading ? BuildSpinner() : Expanded(
        child: ListView.builder(
          itemCount: jumlahBerita,
          itemBuilder: (BuildContext context, int index) {
            DateTime dateTime = DateTime.parse(koleksiBerita[index]['date']);
            return ItemBerita(
              berita: Berita(
                judul: koleksiBerita[index]['title']['rendered'],
                diterbitkan: formatter.format(dateTime),
                link: koleksiBerita[index]['link'],
              ),
            );
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
            padding: const EdgeInsets.all(8.0),
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
