import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dio/models/login_model.dart';
import 'package:flutter_dio/network_manager.dart/repositry.dart';
// 'package:flutter_dio/cubit/login/login_state.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  userlogin(String emailcontroller, String passwordcontroller) {
    emit(LoginLoading());
    Repository()
        .Userlogin({"email": emailcontroller, "password": passwordcontroller})
        .then((value) {
          emit(LoginSuccess(value));
          print("Login Successfull");
          print(value.accessToken);
        })
        .catchError((error) {
          print("Login Failed");
          print(error.toString());
        });
  }
}
