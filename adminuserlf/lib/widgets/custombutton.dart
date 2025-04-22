import 'package:adminuserlf/consts/colors.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String txt;
  final VoidCallback? call;
  const Custombutton({super.key, required this.txt, this.call});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: call,
      style: ElevatedButton.styleFrom(
        backgroundColor: Usingcolors.iconscolor,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
