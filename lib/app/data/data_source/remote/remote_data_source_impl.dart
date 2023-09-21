import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/utils/const.dart';
import 'model/ayat_response.dart';
import 'model/surat_response.dart';
import 'model/tafsir_response.dart';
import 'remote_data_source.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final HttpWithMiddleware http;

  RemoteDataSourceImpl({required this.http});

  @override
  Future<SuratResponse> getSurat() async {
    var res = await http.get(Uri.parse('$BASE_URL/surat'));
    if (res.statusCode != 200) {
      throw ServerException(message: res.body);
    }

    return compute((body) {
      return SuratResponse.fromJson(jsonDecode(body));
    }, res.body);
  }

  @override
  Future<AyatResponse> getAyat(int id) async {
    var res = await http.get(Uri.parse('$BASE_URL/surat/$id'));
    if (res.statusCode != 200) {
      throw ServerException(message: res.body);
    }

    return compute((body) {
      return AyatResponse.fromJson(jsonDecode(body));
    }, res.body);
  }

  @override
  Future<TafsirResponse> getTafsir(int id) async {
    var res = await http.get(Uri.parse('$BASE_URL/tafsir/$id'));
    if (res.statusCode != 200) {
      throw ServerException(message: res.body);
    }
    
    return compute((body) {
      return TafsirResponse.fromJson(jsonDecode(body));
    }, res.body);
  }
}
