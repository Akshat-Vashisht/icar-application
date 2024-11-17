import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffcfcabb),
      child: Column(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.all(5),
            child: Image.asset(
              'lib/assets/logos/icar_logo.png',
            ),
          ),
          const Divider(
            color: Colors.white54,
            indent: 40,
            endIndent: 40,
            thickness: 2.5,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.black87,
                      ),
                      title: Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.pushNamed(context, '/home');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.question_answer,
                        color: Colors.black87,
                      ),
                      title: Text(
                        "ChatBot",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/chatbot');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.question_mark,
                        color: Colors.black87,
                      ),
                      title: Text(
                        "FAQ",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/faq');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.black87,
                      ),
                      title: Text(
                        "Settings",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/settings');
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Colors.black87,
                    ),
                    title: Text(
                      "Exit",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/exit');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
