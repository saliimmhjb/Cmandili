import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/home_screen.dart';
import 'package:shopping/screens/shop_screen.dart';
import 'package:shopping/screens/splash_screen.dart';
import 'package:shopping/widgets/product_label.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cmandili",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFFf2f2f7)),
        scaffoldBackgroundColor: Color(0xFFf2f2f7),
        primaryColor: mainColor,
        colorScheme: ColorScheme.light(
          secondary: secondColor,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme(),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      home: Scaffold(

        body: SplashScreen(),
      ),
    );
  }
}
