import 'package:flutter/material.dart';

class AlarmButton extends StatefulWidget {
  const AlarmButton({super.key});

  @override
  State<AlarmButton> createState() => _AlarmButtonState();
}

class _AlarmButtonState extends State<AlarmButton> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: 'alarm_button',
      shape: const CircleBorder(),
      backgroundColor: Colors.green,
      onPressed: () {
        setState(() {
          enabled = !enabled;
        });
      },
      child: Icon(enabled ? Icons.volume_off : Icons.volume_up),
    );
  }
}
