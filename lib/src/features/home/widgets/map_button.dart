import 'package:flutter/material.dart';

class MapButton extends StatefulWidget {
  const MapButton({super.key});

  @override
  State<MapButton> createState() => _MapButtonState();
}

class _MapButtonState extends State<MapButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: 'map_button',
      onPressed: () {},
      child: const Icon(Icons.flood),
    );
  }
}
