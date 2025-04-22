import 'package:adminuserlf/consts/colors.dart';
import 'package:adminuserlf/widgets/custombutton.dart';
import 'package:adminuserlf/widgets/customtxtfield.dart';
import 'package:adminuserlf/widgets/mntxt.dart';
import 'package:adminuserlf/widgets/txtiph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                // Header
                Mntxt(txt: 'Create an Event'),
                const SizedBox(height: 24),

                // Improved Image upload container
                Center(
                  child: InkWell(
                    onTap: () {
                      // Implement image picker here
                    },
                    child: toaddimage(),
                  ),
                ),

                const SizedBox(height: 24),
                // Event Title
                Txtiph(txt: 'Event Title'),
                const SizedBox(height: 8),
                // Title TextField
                Customtxtfield(
                  txt: 'Event Title',
                ),
                const SizedBox(height: 16),
                // Description
                Txtiph(txt: 'Description'),
                const SizedBox(height: 8),
                // Description TextField
                Customtxtfield(
                  txt: 'Enter the description',
                  lines: 5,
                ),
                const SizedBox(height: 16),
                // Date and Time row
                Row(
                  children: [
                    // Date
                    toadddttime('Date', 'Select a date', Icons.calendar_today),
                    const SizedBox(width: 16),
                    // Time
                    toadddttime('Time', 'Select a time', Icons.access_time),
                  ],
                ),
                const SizedBox(height: 24),
                // Create Event Button
                Custombutton(txt: 'Create'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget toadddttime(String iph, String hinttxt, IconData icon) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Txtiph(txt: iph),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    icon,
                    color: Color(0xFF1ED195),
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      hinttxt,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget toaddimage() {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/FRAME (1).svg', // Update with your SVG asset path
          width: 122,
          height: 102,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Add Event images',
          style: TextStyle(
            color: Usingcolors.iconscolor,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
