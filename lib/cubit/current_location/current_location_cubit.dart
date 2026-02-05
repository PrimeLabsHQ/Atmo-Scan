import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dio/screens/auth/permission_handler.dart';
import 'package:flutter_dio/screens/home_screen.dart';
import 'package:flutter_dio/storage/storage_helper.dart';
//import 'package:flutter_dio/cubit/current_location/current_location_state.dart';

part 'current_location_state.dart';

class CurrentLocationCubit extends Cubit<CurrentLocationState> {
  CurrentLocationCubit() : super(CurrentLocationInitial());
  getCurrentPosition(context) {
    emit(CurrentLocationLoading());
    determinePosition()
        .then((value) {
          debugPrint('Current Location: ${value.latitude}, ${value.longitude}');
          emit(CurrentLocationSuccess());
          StorageHelper().setUserlat(value.latitude);
          StorageHelper().setUserlng(value.longitude);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        })
        .catchError((error) {
          emit(CurrentLocationError());
        });
  }
}
