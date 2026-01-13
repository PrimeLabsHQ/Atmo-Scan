import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dio/cubit/login/login_cubit.dart';
import 'package:flutter_dio/network_manager.dart/repositry.dart';
import 'package:flutter_dio/screens/components/common_button.dart';

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
        title: Text('Login Screen', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Column(
          children: [
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(hintText: "Enter Email"),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                maintainHintHeight: false,
                hintText: "Enter Password",

                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(height: 10),
            BlocProvider(
              create: (context) => LoginCubit(),
              child: BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return CommonButton(
                    onpressed: () {
                      context.read<LoginCubit>().userlogin(
                        emailcontroller.text.toString(),
                        passwordcontroller.text.toString(),
                      );
                    },
                    child: state is LoginLoading
                        ? CircularProgressIndicator()
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
