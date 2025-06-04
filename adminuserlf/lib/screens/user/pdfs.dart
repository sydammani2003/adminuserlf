import 'package:adminuserlf/consts/colors.dart';
import 'package:adminuserlf/screens/user/pdfsview.dart';
import 'package:flutter/material.dart';

class PdfCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;

  const PdfCard({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}

class Pdfs extends StatelessWidget {
  const Pdfs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      body: ListView(
        children: [
          PdfCard(
            title: 'Yukon',
            description: 'Everything we work',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Pdfsview(
                            link: 'https://www.orimi.com/pdf-test.pdf',
                          )));
            },
          ),
          PdfCard(
            title: 'Daikon',
            description: 'A place to visit',
            onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Pdfsview(
                            link: 'https://www.orimi.com/pdf-test.pdf',
                          )));},
          ),
          // Add more PdfCard widgets as needed
        ],
      ),
    );
  }
}
