// mapper from surat_response to surat_entity
import 'package:alquran_lite_flutter/app/data/data_source/remote/model/surat_response.dart';

import '../../data/data_source/local/model/surat_entity.dart';
import '../../domain/model/surat_model.dart';

extension SuratResponseMapper on SuratResponseData {
  Surat toEntity(){
    return Surat(
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

// mapper from post_entity to post_model
extension SuratEntityMapper on Surat {
  SuratModel toModel() {
    return SuratModel(
      id: id,
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

