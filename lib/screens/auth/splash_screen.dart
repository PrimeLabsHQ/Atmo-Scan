import 'package:flutter/material.dart';
import 'package:flutter_dio/helpers/asset_helper.dart';
import 'package:flutter_dio/screens/auth/login_screen.dart';
import 'package:flutter_dio/screens/home_screen.dart';
import 'package:flutter_dio/storage/storage_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      if (StorageHelper().getUserLat() == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(AssetHelper.weatherIcon),
        ),
      ),
    );
  }
}
