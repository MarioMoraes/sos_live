import 'package:flutter/material.dart';
import 'package:projeto_sos/src/features/home/widgets/confirm_dialog.dart';
import 'package:pulsator/pulsator.dart';

class SosButton extends StatefulWidget {
  const SosButton({super.key});

  @override
  State<SosButton> createState() => _SosButtonState();
}

class _SosButtonState extends State<SosButton> with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Pulsator(
      onCreated: (controller) {
        _controller = controller;
      },
      style: const PulseStyle(color: Colors.red),
      autoStart: false,
      count: 10,
      child: SizedBox(
        height: 150,
        width: 150,
        child: RawMaterialButton(
          onPressed: () async {
            final response = await showDialog(
              context: context,
              builder: (context) => const ConfirmDialog(),
              barrierDismissible: false,
            );
            print(response);
          },
          shape: const CircleBorder(),
          fillColor: Colors.red,
          child: const Text(
            'SOS',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
