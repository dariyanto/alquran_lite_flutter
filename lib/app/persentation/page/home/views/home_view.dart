import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AlQuran Lite Flutter'),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await controller.getSurat();
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Obx(
              () => controller.loading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blueGrey,
                      ),
                    )
                  : ListView.builder(
                      itemCount: controller.data.length,
                      itemBuilder: (context, index) {
                        final data = controller.data[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                          ),
                          child: Card(
                            child: ListTile(
                              onTap: () async {
                                await controller.goToDetail(data.nomor);
                              },
                              leading: CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                foregroundColor: Colors.white,
                                child: Text(data.nomor.toString()),
                              ),
                              title: Text(
                                data.namaLatin ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(
                                  "${data.tempatTurun} - ${data.jumlahAyat} Ayat"),
                              trailing: Text(
                                data.nama ?? '',
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.notoSansZanabazarSquare(
                                  fontSize: 30,
                                )
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ));
  }
}
