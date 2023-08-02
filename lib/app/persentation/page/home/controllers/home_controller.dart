import 'package:alquran_lite_flutter/app/domain/model/surat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/app_pages.dart';
import '../../../../domain/repository/app_repository.dart';

class HomeController extends GetxController {
  final AppRepository appRepository;
  final loading = false.obs;
  final data = <SuratModel>[].obs;

  HomeController({required this.appRepository});

  @override
  void onInit() {
    super.onInit();
    getSurat();
  }

  Future<void> getSurat() async {
    loading.value = true;
    final res = await appRepository.getSurat();
    res.fold((l) {
      Get.snackbar('Error', l.message,
          backgroundColor: Colors.red, colorText: Colors.white);
      loading.value = false;
    }, (r) {
      data.value = r;
      loading.value = false;
    });
  }

  Future<void> goToDetail(int? nomor) async {
    Get.toNamed(Routes.DETAIL, arguments: nomor);
  }
}
