import 'package:adminuserlf/consts/colors.dart';
import 'package:flutter/material.dart';

class Customtxtfield extends StatelessWidget {
  final double? height;
  final double? width;
  final int? lines;
  final String? txt;
  const Customtxtfield({super.key, this.height, this.width, this.txt,this.lines});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        maxLines: lines,
        decoration: InputDecoration(
          hintText: txt,
          hintStyle: TextStyle(color: Usingcolors.hinttxt),
          border: InputBorder.none,
          
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}
