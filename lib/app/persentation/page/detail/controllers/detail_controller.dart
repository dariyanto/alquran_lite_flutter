import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/data_source/remote/model/ayat_response.dart';
import '../../../../domain/repository/app_repository.dart';

class DetailController extends GetxController {
  final AppRepository appRepository;
  final loading = false.obs;
  final data = AyatResponse().obs;
  final isFavorite = false.obs;
  final id = Get.arguments;
  final selectedPosition = 0.obs;

  DetailController({required this.appRepository});

  

  @override
  void onInit() {
    super.onInit();
    getSurat();
  }

  Future<void> getSurat() async {
    loading.value = true;
    final res = await appRepository.getAyat(id);
    res.fold((l) {
      Get.snackbar('Error', l.message,
          backgroundColor: Colors.red, colorText: Colors.white);
      loading.value = false;
    }, (r) {
      data.value = r;
      loading.value = false;
    });
  }

  Future<void> openInfo() async {
    // clean html tag from deskripsi
    data.value.data?.deskripsi = data.value.data?.deskripsi
        ?.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '')
        .replaceAll(RegExp(r'&[^;]+;'), '');

    await Get.defaultDialog(
      titlePadding: const EdgeInsets.only(top: 16.0,bottom: 8.0),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      title: data.value.data?.namaLatin ?? '',
      content: SingleChildScrollView(
        child: Text(
          data.value.data?.deskripsi ?? '',
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
