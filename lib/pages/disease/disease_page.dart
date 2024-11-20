import 'package:flutter/material.dart';
import 'package:icar_app/components/custom_drawer.dart';
import 'package:icar_app/components/custom_navbar.dart';
import 'package:icar_app/components/disease/disease_carousel.dart';
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomNavbar(),
            HeadingComponent(
              title: leaf.title,
              fontSize: 24,
            ),
            SizedBox(height: 25),
            DiseaseCarousel(leaf: leaf),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                leaf.description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            HeadingComponent(
              title: 'Causes',
              fontSize: 22,
            ),
            ListView.builder(
              padding: EdgeInsets.only(left: 15, top: 10, right: 5),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: leaf.causes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    leaf.causes[index],
                    style: TextStyle(fontSize: 18),
                  ),
                );
              },
            ),
            HeadingComponent(
              title: 'Preventions',
              fontSize: 22,
            ),
            ListView.builder(
              padding: EdgeInsets.only(left: 15, top: 10, right: 5),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: leaf.preventions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    leaf.preventions[index],
                    style: TextStyle(fontSize: 18),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
