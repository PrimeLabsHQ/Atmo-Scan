import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dio/cubit/current_location/current_location_cubit.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CurrentLocationCubit(),
      child: BlocBuilder<CurrentLocationCubit, CurrentLocationState>(
        builder: (context, state) {
          return GestureDetector(
            onTap:(){
              context.read<CurrentLocationCubit>().getCurrentPosition(context);
            } ,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: state is CurrentLocationLoading
                  ? CircularProgressIndicator()
                  : Icon(Icons.my_location, color: Colors.white, size: 20),
            ),
          );
        },
      ),
    );
  }
}
