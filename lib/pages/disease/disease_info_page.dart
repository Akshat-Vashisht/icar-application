import 'package:flutter/material.dart';
import 'package:icar_app/components/custom_drawer.dart';
import 'package:icar_app/components/custom_navbar.dart';
import 'package:icar_app/components/disease_info/disease_grid.dart';

class DiseaseInfoPage extends StatelessWidget {
  const DiseaseInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfcabb),
      drawer: CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomNavbar(),
          Expanded(child: DiseaseGrid()),
        ],
      ),
    );
  }
}
