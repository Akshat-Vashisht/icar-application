import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      shape: const CircleBorder(),
      backgroundColor: Color(0xff74981e),
      onPressed: () {},
      child: const Icon(
        Icons.camera_alt_outlined,
        size: 35,
      ),
    );
  }
}
