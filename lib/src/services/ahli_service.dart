import 'package:dio/dio.dart';

const KEAHLIAN_URL = 'http://bbta3.bppt.go.id/wp-json/wp/v2/pages/';

class AhliService {
  Dio dio = new Dio();
  int page;
  int category;

  AhliService({this.page = 1, this.category = 2});

  Future<List<dynamic>> readKeahlian() async {
    try {
      var response = await dio.get(KEAHLIAN_URL, queryParameters: {
        "_embed": true,
        "page": page,
        "categories": category,
        "order": 'asc'
      });

      return response.data;
    } catch (err) {

      return [{
        "error": err.response == null ? err.error.message : err.message,
      }];
    }
  }
}
