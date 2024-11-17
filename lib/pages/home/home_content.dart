import 'package:flutter/material.dart';
import 'package:icar_app/components/custom_drawer.dart';
import 'package:icar_app/components/custom_navbar.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfcabb),
      drawer: CustomDrawer(),
      body: const Column(
        children: [
          CustomNavbar(),
        ],
      ),
    );
  }
}
