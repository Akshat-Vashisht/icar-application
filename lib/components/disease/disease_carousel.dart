import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icar_app/models/leaf_model.dart';

class DiseaseCarousel extends StatefulWidget {
  final LeafModel leaf;
  const DiseaseCarousel({super.key, required this.leaf});

  @override
  State<DiseaseCarousel> createState() => _DiseaseCarouselState();
}

class _DiseaseCarouselState extends State<DiseaseCarousel> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: widget.leaf.images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 250,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.easeInOut,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            viewportFraction: 0.65,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.leaf.images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff5d7534)
                        .withOpacity(_current == entry.key ? 1 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
