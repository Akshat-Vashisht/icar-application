import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int index;
  final Function onPressed;
  const CustomBottomNavbar(
      {super.key, required this.index, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Color(0xff74981e),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
              color: index == 0 ? Colors.white : Colors.white24,
            ),
            onPressed: () => onPressed(0),
          ),
          IconButton(
            icon: Icon(
              Icons.description_outlined,
              size: 30,
              color: index == 1 ? Colors.white : Colors.white24,
            ),
            onPressed: () => onPressed(1),
          ),
          IconButton(
              onPressed: () => onPressed(2),
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 30,
                color: index == 2 ? Colors.white : Colors.white24,
              )),
          IconButton(
            icon: Icon(
              Icons.history_outlined,
              size: 30,
              color: index == 3 ? Colors.white : Colors.white24,
            ),
            onPressed: () => onPressed(3),
          ),
          IconButton(
            icon: Icon(
              Icons.person_outline,
              size: 30,
              color: index == 4 ? Colors.white : Colors.white24,
            ),
            onPressed: () => onPressed(4),
          ),
        ],
      ),
    );
  }
}
