import '../../../../../core/di/service_locator.dart';
import '../bloc/surat_bloc.dart';
import 'surat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuratView extends StatelessWidget {
  const SuratView({super.key});

  @override
  Widget build(BuildContext context) {
    var suratBloc = sl<SuratBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al-Qur\'an Lite Flutter'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => suratBloc..add(
            const SuratFetchRequested(),
          ),
        child: const SuratList(),
      ),
    );
    // get repository using get_it
  }
}
