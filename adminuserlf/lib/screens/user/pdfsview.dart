import 'package:flutter/material.dart';
import 'package:flutter_native_pdf_viewer/flutter_native_pdf_viewer.dart';

class Pdfsview extends StatefulWidget {
  final String? link;
  const Pdfsview({super.key,this.link});

  @override
  State<Pdfsview> createState() => _PdfsviewState();
}

class _PdfsviewState extends State<Pdfsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NativePdfView(url: widget.link,) ,);
  }
}
