// ignore_for_file: deprecated_member_use

import 'package:adminuserlf/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EventDetailsScreen extends StatelessWidget {
  EventDetailsScreen({super.key});
  final List<String> img = [
    'https://picsum.photos/id/237/500/300',
    'https://picsum.photos/seed/picsum/500/300',
    'https://picsum.photos/500/300?grayscale',
    'https://picsum.photos/500/300/',
    'https://picsum.photos/id/870/500/300'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Usingcolors.mainhcolor,
          ),
        ),
        title: const Text(
          'Event Details',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Usingcolors.mainhcolor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Image with Carousel Indicator

            const SizedBox(height: 16),
            CarouselSlider(
                items: img.map((e) => Center(child: Image.network(e))).toList(),
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 1))),
            SizedBox(
              height: 10,
            ),
            // Event Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Summer Music Festival 2024',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Usingcolors.mainhcolor),
              ),
            ),

            const SizedBox(height: 8),

            // Date and Time
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Icon(
                    Icons.access_time,
                    color: Usingcolors.btnbgcolor,
                    size: 16,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'June 15, 2024 • 7:00 PM',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Event Description
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Join us for an unforgettable evening of live music under the stars. Featuring top artists from around the world, this festival promises to be the highlight of your summer.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // QR Code Section
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Scan this QR Code to Join',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Usingcolors.mainhcolor),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Usingcolors.mainhcolor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.network(
                        'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=SummerMusicFestival2024',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Home Indicator

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
    );
  }
}
