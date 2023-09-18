// mapper from surat_response to surat_entity
import 'package:alquran_lite_flutter/app/data/data_source/remote/model/ayat_response.dart';
import 'package:alquran_lite_flutter/app/data/data_source/remote/model/surat_response.dart';
import 'package:alquran_lite_flutter/app/data/data_source/remote/model/tafsir_response.dart';

import '../../data/data_source/local/model/ayat_entity.dart';
import '../../data/data_source/local/model/surat_entity.dart';
import '../../data/data_source/local/model/tafsir_entity.dart';
import '../../domain/model/ayat_model.dart';
import '../../domain/model/surat_model.dart';
import '../../domain/model/tafsir_model.dart';

extension SuratResponseMapper on SuratResponseData {
  Surat toEntity(){
    return Surat.optional(
      suratId: nomor,
      nama: nama,
      namaLatin: namaLatin,
      jumlahAyat: jumlahAyat.toString(),
      tempatTurun: tempatTurun,
      arti: arti,
      deskripsi: deskripsi,
      audio1: audioFull?.the01,
      audio2: audioFull?.the02,
      audio3: audioFull?.the02,
      audio4: audioFull?.the03,
      audio5: audioFull?.the04,
    );
  }
}

extension SuratEntityMapper on Surat {
  SuratModel toModel() {
    return SuratModel(
      id: id,
      suratId: suratId,
      nama: nama,
      namaLatin: namaLatin,
      jumlahAyat: jumlahAyat,
      tempatTurun: tempatTurun,
      arti: arti,
      deskripsi: deskripsi,
      audio1: audio1,
      audio2: audio2,
      audio3: audio3,
      audio4: audio4,
      audio5: audio5,
    );
  }
}

extension AyatResponseMapper on AyatResponseDataAyat {
  Ayat toEntity(id) {
    return Ayat.optional(
      suratId: id,
      ayatId: nomorAyat,
      teksArab: teksArab,
      teksLatin: teksLatin,
      teksIndonesia: teksIndonesia,
      audio1: audio?.the01,
      audio2: audio?.the02,
      audio3: audio?.the03,
      audio4: audio?.the04,
      audio5: audio?.the05,
    );
  }
}

extension AyatEntityMapper on Ayat {
  AyatModel toModel() {
    return AyatModel(
      id: id,
      suratId: suratId,
      ayatId: ayatId,
      teksArab: teksArab,
      teksLatin: teksLatin,
      teksIndonesia: teksIndonesia,
      audio1: audio1,
      audio2: audio2,
      audio3: audio3,
      audio4: audio4,
      audio5: audio5,
    );
  }
}

extension TafsirResponseMapper on TafsirResponseDataTafsir {
  Tafsir toEntity(int suratId) {
    return Tafsir.optional(
      ayatId: ayat,
      teks: teks,
      suratId: suratId
    );
  }
}

extension TafsirEntityMapper on Tafsir {
  TafsirModel toModel() {
    return TafsirModel(
      suratId: suratId,
      ayatId: ayatId,
      teks: teks,
    );
  }
}