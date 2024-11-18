import 'package:flutter/material.dart';
import 'package:icar_app/components/custom_drawer.dart';
import 'package:icar_app/components/custom_navbar.dart';
import 'package:icar_app/components/heading_component.dart';
import 'package:icar_app/models/leaf_model.dart';

class DiseasePage extends StatelessWidget {
  final LeafModel leaf;
  const DiseasePage({super.key, required this.leaf});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfcabb),
      drawer: CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomNavbar(),
          HeadingComponent(title: leaf.title),
        ],
      ),
    );
  }
}
