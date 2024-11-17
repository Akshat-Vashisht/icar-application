import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealLeaf extends StatelessWidget {
  const HealLeaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 225,
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.photo_camera,
                        color: Colors.grey[800],
                        size: 60,
                      ),
                      Text(
                        "Take a \npicture",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.double_arrow,
                  color: Colors.grey[800],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.coronavirus,
                        color: Colors.grey[800],
                        size: 60,
                      ),
                      Text(
                        "Identify \ndisease",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.double_arrow,
                  color: Colors.grey[800],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.medication,
                        color: Colors.grey[800],
                        size: 60,
                      ),
                      Text(
                        "Treat \ndisease",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff74981e),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                "Take me there",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
