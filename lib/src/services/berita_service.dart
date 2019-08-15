import 'package:dio/dio.dart';

const BERITA_URL = 'http://bbta3.bppt.go.id/wp-json/wp/v2/posts/';

class BeritaService {
  Dio dio = new Dio();
  int page;

  BeritaService({this.page = 1});

  Future<List<dynamic>> readBerita() async {
    try {
      var response = await dio.get(BERITA_URL, queryParameters: {
        "_embed": true,
        "page": page,
      });

      return response.data;
    } catch (err) {

      return [{
        "error": err.error == null ? err.message : err.error.message,
      }];
    }
  }
}
