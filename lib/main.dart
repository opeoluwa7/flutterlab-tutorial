import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/model/theme_data.dart';
import 'package:myapp/provider/base_functions.dart';
import 'package:myapp/routes/route_generator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BaseFunctions(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterLab',
      theme: darkMode,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }

  /*ThemeData _themeData() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey[850],
      cardColor: Colors.grey.shade900,
      appBarTheme: AppBarTheme(
        color: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 26,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: GoogleFonts.poppins(
          color: Colors.grey[500],
          fontSize: 16,
          fontWeight: FontWeight.w100,
        ),
        labelMedium: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        labelSmall: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
      ),
    );*/
  }

