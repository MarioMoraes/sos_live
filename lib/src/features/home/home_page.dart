import 'package:flutter/material.dart';
import 'package:projeto_sos/src/features/home/widgets/sos_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const Column(
        children: [
          SosButton(),
          Row(
            children: [
              Text('BOTAO 2'),
              Text('BOTAO 3'),
              Text('BOTAO 4'),
            ],
          )
        ],
      ),
    );
  }
}
