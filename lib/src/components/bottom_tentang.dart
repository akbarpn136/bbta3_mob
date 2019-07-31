import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class BottomTentang extends StatelessWidget {
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
              SizedBox(width: 11.0,),
              Image.asset('images/bppt.png'),
            ],
          ),
          SizedBox(height: 21.0,),
          Text(
            'BBTA3 (Balai Besar Teknologi Aerodinamika, Aeroelastika dan Aeroakustika) merupakan transformasi dari unit kerja lama UPT LAGG dengan konsep baru dengan cakupan keahlian yang lebih luas.'
          ),
          SizedBox(height: 21.0,),
          Row(
            children: <Widget>[
              FlatButton(
                child: Icon(EvaIcons.facebook),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(EvaIcons.twitter),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
