import 'package:alquran_lite_flutter/app/domain/model/surat_model.dart';

import 'surat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/surat_bloc.dart';

class SuratList extends StatelessWidget {
  const SuratList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuratBloc, SuratState>(
      builder: (context, state) {
        if (state is SuratInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SuratLoaded) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: state.surats.length,
              itemBuilder: (context, index) {
                SuratModel data = state.surats[index];
                return SuratItem(
                  data: data,
                  onTap: () => context.push('/${data.suratId}'),
                );
              },
            ),
          );
        } else if (state is SuratError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: Text('Unknown state'),
          );
        }
      },
    );
  }
}
