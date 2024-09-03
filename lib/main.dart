import 'package:flutter/material.dart';
import 'package:travel_loc/Screen/dashboard_screen.dart';
import 'package:travel_loc/Screen/location_screen.dart';
import 'package:travel_loc/Screen/splash_screen.dart';
import 'package:travel_loc/Theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme(),
      title: 'Ceylon Voyages',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/dashboard": (context) => const DashboardScreen(),
        "/location": (context) => const LocationScreen(),
      },
    );
  }
}
