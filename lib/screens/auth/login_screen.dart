import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
        child: Column(children: [
                 TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "Enter Email"
                  ),
                 ),
                 SizedBox(height: 10,),
                 TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: "Enter Password"
                  ),
                 ),
          ],
        ),
      ),
    );
  }
}
