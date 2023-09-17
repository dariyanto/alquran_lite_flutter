import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/surat_bloc.dart';

class SuratList extends StatelessWidget {
  const SuratList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuratBloc, SuratState>(
      builder: (context, state) {
        if (state is SuratInitial) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        } else if (state is SuratLoaded) {
          return ListView.builder(
            itemCount: state.surats.length,
            itemBuilder: (context, index) {
              var data = state.surats[index];
              return ListTile(
                title: Text(data.namaLatin ?? ''),
              );
            },
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
