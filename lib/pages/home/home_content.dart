import 'package:flutter/material.dart';
import 'package:icar_app/components/custom_drawer.dart';
import 'package:icar_app/components/custom_navbar.dart';
import 'package:icar_app/components/heading_component.dart';
import 'package:icar_app/components/home/heal_leaf.dart';
import 'package:icar_app/components/home/weather.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfcabb),
      drawer: CustomDrawer(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomNavbar(),
          HeadingComponent(title: "Diagnose your leaf"),
          HealLeaf(),
          HeadingComponent(title: "Today's Weather"),
          Weather()
        ],
      ),
    );
  }
}
