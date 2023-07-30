import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.data.value.data?.namaLatin ?? ''),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () async {
                  await controller.openInfo();
                },
                icon: const Icon(Icons.help_outline_outlined),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RefreshIndicator(
              onRefresh: () async {
                await controller.getSurat();
              },
              child: controller.loading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blueGrey,
                      ),
                    )
                  : ListView.builder(
                      itemCount: controller.data.value.data?.ayat?.length,
                      itemBuilder: (context, index) {
                        final data = controller.data.value.data?.ayat?[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                          ),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blueGrey,
                                    foregroundColor: Colors.white,
                                    child: Text(data?.nomorAyat.toString() ?? '' ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "${data?.teksArab}",
                                      textDirection: TextDirection.rtl,
                                      style: const TextStyle(
                                        fontSize: 32,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${data?.teksLatin}",
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${data?.teksIndonesia}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        );
      },
    );
  }
}
