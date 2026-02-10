import 'package:flutter/material.dart';
import 'package:flutter_dio/screens/auth/login_screen.dart';
import 'package:flutter_dio/storage/storage_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              StorageHelper().clean();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
        title: Text('Home Screen', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
