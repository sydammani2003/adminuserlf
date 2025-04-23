import 'package:adminuserlf/consts/colors.dart';
import 'package:adminuserlf/screens/user/eventsdetails.dart';
import 'package:adminuserlf/widgets/mntxt.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status bar simulation

              Mntxt(txt: 'Upcoming Events'),
              const SizedBox(height: 24),

              // Event Cards
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>EventDetailsScreen())),
                child: toshoweventcard(
                  'Summer Music Festival 2024',
                  'June 15, 2024',
                  '7:00 PM',
                ),
              ),
              const SizedBox(height: 12),
              toshoweventcard(
                'Tech Conference 2024',
                'July 2, 2024',
                '9:00 AM',
              ),
              const SizedBox(height: 12),
              toshoweventcard(
                'Food & Wine Expo',
                'July 10, 2024',
                '11:00 AM',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget toshoweventcard(
      final String title, final String date, final String time) {
    return Container(
      decoration: BoxDecoration(
        color: Usingcolors.bgcolor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Usingcolors.mainhcolor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: Usingcolors.btnbgcolor,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$date • $time',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Usingcolors.btnbgcolor,
            ),
          ],
        ),
      ),
    );
  }
}
