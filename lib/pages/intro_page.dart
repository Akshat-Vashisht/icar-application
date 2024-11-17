import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icar_app/pages/home/home_page.dart';
import 'package:slide_to_act/slide_to_act.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF74981E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 100),
          // Image
          Column(
            children: [
              Image.asset(
                'lib/assets/logos/icar_logo.png',
                height: 300,
              ),

              SizedBox(height: 30),
              // Subheading
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Your one stop solution to crop disease management',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey[300],
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          // Swipe to enter button
          Padding(
            padding: const EdgeInsets.all(30),
            child: SlideAction(
              onSubmit: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
                return null;
              },
              submittedIcon: Icon(
                Icons.check,
                color: Color(0xffccd4a4),
              ),
              elevation: 0,
              borderRadius: 12,
              innerColor: Color(0xffccd4a4),
              outerColor: Color(0xff5d7534),
              text: 'Swipe to enter',
              textStyle: GoogleFonts.poppins(
                color: Color(0xffccd4a4),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
