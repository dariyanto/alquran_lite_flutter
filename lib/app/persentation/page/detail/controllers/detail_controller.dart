import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/data_source/remote/model/ayat_response.dart';
import '../../../../domain/repository/app_repository.dart';

class DetailController extends GetxController {
  final AppRepository appRepository;
  final loading = false.obs;
  final data = <AyatResponseDataAyat>[].obs;
  final title = ''.obs;

  final id = Get.arguments;

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
      data.value = r.data?.ayat as List<AyatResponseDataAyat>;
      title.value = r.data?.namaLatin ?? '';
      loading.value = false;
    });
  }
}
