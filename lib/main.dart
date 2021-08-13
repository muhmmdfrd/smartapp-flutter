import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartapp/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: SafeArea(
        child: Scaffold(
          body: SplashPage(),
        ),
      ),
    );
  }
}
