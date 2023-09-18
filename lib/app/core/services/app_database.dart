import 'dart:async';
import 'package:alquran_lite_flutter/app/data/data_source/local/dao/ayat_dao.dart';
import 'package:alquran_lite_flutter/app/data/data_source/local/dao/statistik_dao.dart';
import 'package:alquran_lite_flutter/app/data/data_source/local/model/ayat_entity.dart';
import 'package:floor/floor.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../data/data_source/local/converter/type_converter.dart';
import '../../data/data_source/local/dao/bookmark_dao.dart';
import '../../data/data_source/local/dao/riwayat_dao.dart';
import '../../data/data_source/local/dao/surat_dao.dart';
import '../../data/data_source/local/dao/tafsir_dao.dart';
import '../../data/data_source/local/model/bookmark_entity.dart';
import '../../data/data_source/local/model/riwayat_entity.dart';
import '../../data/data_source/local/model/statistik_entity.dart';
import '../../data/data_source/local/model/surat_entity.dart';
import '../../data/data_source/local/model/tafsir_entity.dart';

part 'app_database.g.dart'; // the generated code will be there

@Database(
    version: 1, entities: [Ayat, Bookmark, Riwayat, Surat, Tafsir, Statistik])
@TypeConverters([DateTimeConverter])
abstract class AppDatabase extends FloorDatabase {
  SuratDao get suratDao;
  AyatDao get ayatDao;
  BookmarkDao get bookmarkDao;
  RiwayatDao get riwayatDao;
  TafsirDao get tafsirDao;
  StatistikDao get statistikDao;
}
