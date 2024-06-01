import 'package:flutter/material.dart';

class TorchButton extends StatefulWidget {
  const TorchButton({super.key});

  @override
  State<TorchButton> createState() => _TorchButtonState();
}

class _TorchButtonState extends State<TorchButton> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: 'torch_button',
      backgroundColor: (active) ? Colors.yellow : Colors.black,
      onPressed: () {
        setState(() {
          active = !active;
        });
      },
      child: Icon(
        Icons.lightbulb,
        color: active ? Colors.black : Colors.white,
      ),
    );
  }
}
