import 'package:flutter/material.dart';
import 'package:icar_app/components/custom_search_bar.dart';
import 'package:icar_app/components/disease/disease_tile.dart';
import 'package:icar_app/models/leaf_model.dart';

class DiseaseGrid extends StatefulWidget {
  const DiseaseGrid({super.key});

  @override
  State<DiseaseGrid> createState() => _DiseaseGridState();
}

class _DiseaseGridState extends State<DiseaseGrid> {
  late List<LeafModel> filteredGrid;

  void onChanged(String query) {
    setState(() {
      filteredGrid = diseaseGrid
          .where((element) =>
              element.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    filteredGrid = diseaseGrid;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchBar(onChanged: onChanged),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            itemCount: filteredGrid.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) =>
                DiseaseTile(leaf: filteredGrid[index]),
          ),
        ),
      ],
    );
  }
}
