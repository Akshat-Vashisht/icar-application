import 'package:flutter/material.dart';
import 'package:icar_app/pages/chatbot_page.dart';
import 'package:icar_app/pages/faq_page.dart';
import 'package:icar_app/pages/home/home_page.dart';
import 'package:icar_app/pages/intro_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icar_app/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ICAR Application",
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      routes: {
        '/home': (context) => const HomePage(),
        '/chatbot': (context) => const ChatBotPage(),
        '/settings': (context) => const SettingsPage(),
        '/faq': (context) => const FAQPage(),
        '/exit': (context) => const IntroPage(),
      },
    );
  }
}
