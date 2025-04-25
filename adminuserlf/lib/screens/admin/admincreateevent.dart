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
    final mediaquery = MediaQuery.of(context);
    final screenwidth = mediaquery.size.width;
    
    return Scaffold(
      backgroundColor: Usingcolors.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (screenwidth <= 600) mobileview(),
                if (screenwidth > 600 && screenwidth <= 992) tabview(),
                if (screenwidth > 992) webview()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mobileview() {
    return Column(
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
    );
  }

  Widget tabview() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),

          // Header
          Mntxt(txt: 'Create an Event'),
          const SizedBox(height: 24),

          // Image Upload
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
          Customtxtfield(txt: 'Event Title'),
          const SizedBox(height: 16),

          // Description
          Txtiph(txt: 'Description'),
          const SizedBox(height: 8),
          Customtxtfield(
            txt: 'Enter the description',
            lines: 5,
          ),
          const SizedBox(height: 16),

          // Date and Time Side-by-Side
          Row(
            children: [
              Expanded(
                child:
                    toadddttime('Date', 'Select a date', Icons.calendar_today),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: toadddttime('Time', 'Select a time', Icons.access_time),
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Create Button
          Custombutton(txt: 'Create'),
        ],
      ),
    );
  }

  Widget webview() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),

              // Header
              Mntxt(txt: 'Create an Event'),
              const SizedBox(height: 32),

              // Image Upload Container
              Center(
                child: InkWell(
                  onTap: () {
                    // Implement image picker here
                  },
                  child: toaddimage(),
                ),
              ),

              const SizedBox(height: 32),

              // Event Title
              Txtiph(txt: 'Event Title'),
              const SizedBox(height: 8),
              Customtxtfield(txt: 'Event Title'),
              const SizedBox(height: 24),

              // Description
              Txtiph(txt: 'Description'),
              const SizedBox(height: 8),
              Customtxtfield(
                txt: 'Enter the description',
                lines: 5,
              ),
              const SizedBox(height: 24),

              // Date & Time Row
              LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth > 500;
                  return isWide
                      ? Row(
                          children: [
                            Expanded(
                                child: toadddttime('Date', 'Select a date',
                                    Icons.calendar_today)),
                            const SizedBox(width: 16),
                            Expanded(
                                child: toadddttime('Time', 'Select a time',
                                    Icons.access_time)),
                          ],
                        )
                      : Column(
                          children: [
                            toadddttime(
                                'Date', 'Select a date', Icons.calendar_today),
                            const SizedBox(height: 16),
                            toadddttime(
                                'Time', 'Select a time', Icons.access_time),
                          ],
                        );
                },
              ),

              const SizedBox(height: 32),

              // Create Button
              Custombutton(txt: 'Create'),
              const SizedBox(height: 24),
            ],
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
                    color: Usingcolors.iconscolor,
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
