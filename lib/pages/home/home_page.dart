import 'package:flutter/material.dart';
import 'package:icar_app/components/camera_button.dart';
import 'package:icar_app/components/rounded_bottom_navbar.dart';
import 'package:icar_app/pages/disease_info_page.dart';
import 'package:icar_app/pages/history_page.dart';
import 'package:icar_app/pages/home/home_content.dart';
import 'package:icar_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List _pages = [
    const HomeContent(),
    const DiseaseInfoPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  void onPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfcabb),
      body: _pages[_selectedIndex],
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: CameraButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
          RoundedBottomNavbar(onPressed: onPressed, index: _selectedIndex),
    );
  }
}
