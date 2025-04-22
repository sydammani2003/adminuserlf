import 'package:adminuserlf/consts/colors.dart';
import 'package:flutter/material.dart';

class Mntxt extends StatelessWidget {
  final String txt;
  const Mntxt({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
                    txt,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Usingcolors.mainhcolor,
                    ),
                  );
  }
}
