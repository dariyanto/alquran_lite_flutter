import '../bloc/ayat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/service_locator.dart';
import '../../../../../domain/repository/app_repository.dart';
import 'ayat_list.dart';

class AyatView extends StatelessWidget {
  final String suratId;
  const AyatView({super.key, required this.suratId});

  @override
  Widget build(BuildContext context) {
    var repository = sl<AppRepository>();
    return BlocProvider(
      create: (context) => AyatBloc(
        repository,
      )..add(AyatFetchRequested(
          suratId: suratId,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ayat'),
          centerTitle: true,
          actions: [
            // favorite button
            IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.favorite_outline),
            ),
            IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.help_outline),
            ),
          ],
        ),
        body: const AyatList(),
      ),
    );
  }
}
