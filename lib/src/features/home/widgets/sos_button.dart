import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:projeto_sos/src/features/home/widgets/confirm_dialog.dart';
import 'package:projeto_sos/src/features/home/widgets/cubit/sos_cubit.dart';
import 'package:pulsator/pulsator.dart';

class SosButton extends StatefulWidget {
  final SosCubit _controller;

  const SosButton({super.key, required SosCubit controller})
      : _controller = controller;

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
    return BlocBuilder<SosCubit, SosState>(
      bloc: context.get(),
      builder: (context, state) {
        if (state is DistressOnState) {
          _controller?.forward();
        } else {
          _controller?.stop();
          _controller?.reset();
        }
        return Pulsator(
          onCreated: (controller) {
            _controller = controller;
          },
          style: const PulseStyle(color: Colors.red),
          autoStart: false,
          count: (state is DistressOnState) ? 10 : 1,
          child: SizedBox(
            height: 150,
            width: 150,
            child: RawMaterialButton(
              onPressed: () async {
                if (state is DistressOnState) {
                  widget._controller.desligaSos();
                } else {
                  final response = await showDialog(
                    context: context,
                    builder: (context) => const ConfirmDialog(),
                    barrierDismissible: false,
                  );
                  if (response) {
                    widget._controller.acionaSos();
                  }
                }
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
      },
    );
  }
}
