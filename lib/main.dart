import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/Homepage.dart';
import 'package:flutter_ecommerce_app/pages/Loginpage.dart';
import 'package:flutter_ecommerce_app/utils/routes.dart';
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
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/": (context) => const Loginpage(),
          Myroutes.homeroute: (context) => const Homepage(),
          Myroutes.loginroute: (context) => const Loginpage(),
        });
  }
}
