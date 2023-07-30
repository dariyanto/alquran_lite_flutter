import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
              // favorite button
              IconButton(
                onPressed: () async {
                  await controller.toggleFavorite();
                },
                icon: Obx(
                  () => Icon(
                    controller.isFavorite.value
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  await controller.openInfo();
                },
                icon: const Icon(Icons.help_outline_outlined),
              ),
            ],
          ),
          body: Scrollbar(
            child: Padding(
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
                            child: GestureDetector(
                              onTap: () async {
                                await controller.expandCard(index);
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            minRadius: 16,
                                            maxRadius: 18,
                                            backgroundColor: Colors.blueGrey,
                                            foregroundColor: Colors.white,
                                            child: Text(
                                                data?.nomorAyat.toString() ??
                                                    ''),
                                          ),
                                          const Spacer(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.play_arrow,
                                                  size: 28,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.share,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.copy,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("${data?.teksArab}",
                                            textDirection: TextDirection.rtl,
                                            style: GoogleFonts.amiri(
                                              fontSize: 32,
                                              height: 2,
                                            )),
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
                            ),
                          );
                        },
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
