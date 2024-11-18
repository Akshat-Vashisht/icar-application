import 'package:flutter/material.dart';
import 'package:icar_app/models/leaf_model.dart';
import 'package:icar_app/pages/disease/disease_page.dart';

class DiseaseTile extends StatelessWidget {
  final LeafModel leaf;
  const DiseaseTile({super.key, required this.leaf});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white38,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: Image.asset(
                  leaf.displayImage,
                  cacheHeight: 600,
                  cacheWidth: 500,
                ).image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 110,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 10,
                  ),
                  child: Text(
                    leaf.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 51.111,
                width: 51.111,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DiseasePage(leaf: leaf)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff5d7534),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
