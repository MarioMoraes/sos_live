import 'package:flutter/material.dart';
import 'package:projeto_sos/src/features/home/widgets/alarm_button.dart';
import 'package:projeto_sos/src/features/home/widgets/cubit/sos_cubit.dart';
import 'package:projeto_sos/src/features/home/widgets/map_button.dart';
import 'package:projeto_sos/src/features/home/widgets/sos_button.dart';
import 'package:projeto_sos/src/features/home/widgets/torch_button.dart';

class HomePage extends StatelessWidget {
  final SosCubit controller;

  const HomePage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Column(
        children: [
          Expanded(child: SosButton()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AlarmButton(),
              TorchButton(),
              MapButton(),
            ],
          )
        ],
      ),
    );
  }
}
