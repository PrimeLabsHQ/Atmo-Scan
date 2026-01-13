//import 'package:flutter/material.dart';
part of "login_cubit.dart";

//import 'package:flutter/foundation.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginModel loginmodel;
  LoginSuccess(this.loginmodel);
}

class LoginError extends LoginState {}
