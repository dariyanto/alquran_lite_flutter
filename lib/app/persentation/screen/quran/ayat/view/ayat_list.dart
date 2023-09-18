import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/ayat_bloc.dart';
import 'ayat_item.dart';

class AyatList extends StatelessWidget {
  const AyatList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AyatBloc, AyatState>(
      builder: (context, state) {
        if (state is AyatInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is AyatLoaded) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: state.ayats.length,
              itemBuilder: (context, index) {
                final data = state.ayats[index];
                return AyatItem(
                  data: data,
                  onTap: () {},
                );
              },
            ),
          );
        } else if (state is AyatError) {
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
