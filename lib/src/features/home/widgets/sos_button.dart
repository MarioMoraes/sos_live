import 'package:flutter/material.dart';

class SosButton extends StatelessWidget {
  const SosButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: RawMaterialButton(
        onPressed: () {},
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
    );
  }
}
