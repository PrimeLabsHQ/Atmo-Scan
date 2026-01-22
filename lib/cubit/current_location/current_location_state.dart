//import 'package:flutter/material.dart';

part of "current_location_cubit.dart";

//import 'package:flutter/foundation.dart';


@immutable
abstract class CurrentLocationState {}

class CurrentLocationInitial extends CurrentLocationState {}

class CurrentLocationLoading extends CurrentLocationState {}

class CurrentLocationSuccess extends CurrentLocationState {
  // final LoginModel loginmodel;
  // LoginSuccess(this.loginmodel);
}

class CurrentLocationError extends CurrentLocationState {}