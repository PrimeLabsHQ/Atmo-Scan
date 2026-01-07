import 'package:flutter/material.dart';
import 'package:flutter_dio/UI/Barcode_home.dart';
import 'package:flutter_dio/UI/language_trnslator.dart';
import 'package:flutter_dio/screens/auth/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR code Saccner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue,titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashScreen(),
    );
  }
}
