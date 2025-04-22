import 'package:adminuserlf/screens/admin/admincreateevent.dart';
import 'package:adminuserlf/screens/admin/admineventattendance.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  // Replace these placeholders with your actual page widgets
  late final List<Widget> _pages;
  
  @override
  void initState() {
    super.initState();
    // Add your pages here
    _pages = [
      // Replace with your actual page widgets:
      // Example: CreateEventPage(),
      // Example: AttendancePage(),
      CreateEventScreen(),
      EventAttendanceScreen()   // Replace with your Attendance page
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 70,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Create Tab
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: _selectedIndex == 0 
                              ? const Color(0xFF1ED195) 
                              : Colors.grey,
                          size: 30,
                        ),
                        Text(
                          'Create',
                          style: TextStyle(
                            color: _selectedIndex == 0 
                                ? const Color(0xFF1ED195) 
                                : Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Attendance Tab
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: _selectedIndex == 1 
                              ? const Color(0xFF1ED195) 
                              : Colors.grey,
                          size: 30,
                        ),
                        Text(
                          'Attendance',
                          style: TextStyle(
                            color: _selectedIndex == 1 
                                ? const Color(0xFF1ED195) 
                                : Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Horizontal indicator
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 5,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}