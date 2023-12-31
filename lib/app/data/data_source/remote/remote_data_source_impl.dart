import 'dart:convert';

import 'package:pretty_http_logger/pretty_http_logger.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/utils/const.dart';
import 'model/ayat_response.dart';
import 'model/surat_response.dart';
import 'model/tafsir_response.dart';
import 'remote_data_source.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final HttpWithMiddleware client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<SuratResponse> getSurat() async {
    try {
      var res = await client
          .get(Uri.parse('$BASE_URL/surat'));
      if (res.statusCode != 200) {
        throw ServerException(message: res.body);
      }
      return SuratResponse.fromJson(jsonDecode(res.body));
    } catch (e) {
      throw TimeoutException(message: e.toString());
    }
  }

  @override
  Future<AyatResponse> getAyat(int id) async {
    try {
      var res = await client.get(Uri.parse('$BASE_URL/surat/$id'));
      if (res.statusCode != 200) {
        throw ServerException(message: res.body);
      }
      return AyatResponse.fromJson(jsonDecode(res.body));
    } catch (e) {
      throw TimeoutException(message: e.toString());
    }
  }

  @override
  Future<TafsirResponse> getTafsir(int id) async {
    try {
      var res = await client.get(Uri.parse('$BASE_URL/tafsir/$id'));
      if (res.statusCode != 200) {
        throw ServerException(message: res.body);
      }
      return TafsirResponse.fromJson(jsonDecode(res.body));
    } catch (e) {
      throw TimeoutException(message: e.toString());
    }
  }
}
