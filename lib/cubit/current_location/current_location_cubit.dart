import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dio/screens/auth/permission_handler.dart';
//import 'package:flutter_dio/cubit/current_location/current_location_state.dart';

part 'current_location_state.dart';

class CurrentLocationCubit extends Cubit<CurrentLocationState> {
  CurrentLocationCubit() : super(CurrentLocationInitial());
  getCirrentPosition() {
    emit(CurrentLocationLoading());
    determinePosition()
        .then((value) {
          emit(CurrentLocationSuccess());
          
        })
        .catchError((error) {
          emit(CurrentLocationError());
        });
  }
}
