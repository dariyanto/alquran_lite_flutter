import 'package:alquran_lite_flutter/app/core/di/service_locator.dart';
import 'package:alquran_lite_flutter/app/domain/repository/app_repository.dart';
import 'package:alquran_lite_flutter/app/persentation/screen/quran/surat/bloc/surat_bloc.dart';
import 'package:alquran_lite_flutter/app/persentation/screen/quran/surat/view/surat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuratView extends StatelessWidget {
  const SuratView({super.key});

  @override
  Widget build(BuildContext context) {
    var repository = sl<AppRepository>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al-Qur\'an Lite Flutter'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => SuratBloc(
          repository,
        )..add(
            const FetchedSurat(),
          ),
        child: const SuratList(),
      ),
    );
    // get repository using get_it
  }
}
