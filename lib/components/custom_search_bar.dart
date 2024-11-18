import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String) onChanged;
  const CustomSearchBar({super.key, required this.onChanged});

  @override
  CustomSearchBarState createState() => CustomSearchBarState();
}

class CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      margin: EdgeInsets.only(left: 25, right: 25, top: 25),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.black),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (query) {
                widget.onChanged(query);
              },
              cursorWidth: 1,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Search for a disease',
                border: InputBorder.none,
                hintStyle: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
