import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:bbta3/src/helpers/variables.dart';


class BuildSpinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitFadingFour(
      color: Color(BLUE),
      size: 47.0,
    );
  }
}
