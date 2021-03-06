import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/Homepage.dart';
import 'package:flutter_ecommerce_app/pages/Loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.montserrat().fontFamily),
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          "/": (context) => Loginpage(),
          "/HomePage/": (context) => Homepage(),
        });
  }
}
