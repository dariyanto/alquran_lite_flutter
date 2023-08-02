import 'package:alquran_lite_flutter/app/domain/model/ayat_model.dart';
import 'package:alquran_lite_flutter/app/domain/model/surat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/repository/app_repository.dart';

class DetailController extends GetxController {
  final AppRepository appRepository;
  final loading = false.obs;
  final data = <AyatModel>[].obs;
  final surat = SuratModel().obs;
  final isFavorite = false.obs;
  final id = Get.arguments;
  final selectedPosition = 0.obs;

  DetailController({required this.appRepository});

  @override
  void onInit() {
    super.onInit();
    getSurat();
    getAyat();
  }

  Future<void> getSurat() async {
    final res = await appRepository.getSuratById(id);
    res.fold((l) {
      Get.snackbar(
        'Error',
        l.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }, (r) => surat.value = r);
  }

  Future<void> getAyat() async {
    loading.value = true;
    final res = await appRepository.getAyat(id);
    res.fold((l) {
      Get.snackbar(
        'Error',
        l.message,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      loading.value = false;
    }, (r) {
      data.value = r;
      loading.value = false;
    });
  }

  Future<void> openInfo() async {
    // clean html tag from deskripsi
    var deskripsi = surat.value.deskripsi
        ?.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '')
        .replaceAll(RegExp(r'&[^;]+;'), '');

    await Get.defaultDialog(
      titlePadding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      title: surat.value.namaLatin ?? '',
      content: SingleChildScrollView(
        child: Text(
          deskripsi ?? '',
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Future<void> toggleFavorite() async {
    isFavorite.value = !isFavorite.value;
    // TODO: uncomment this code to enable favorite feature
    // if (isFavorite.value) {
    //   await appRepository.addFavorite(data.value.data!);
    // } else {
    //   await appRepository.removeFavorite(data.value.data!);
    // }
  }

  Future<void> expandCard(int index) async {
    selectedPosition.value = index;
  }
}
