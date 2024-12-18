import 'package:airplane/cubit/cubit/seat_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class seatItem extends StatelessWidget {
  //NOTE: 0. Available 1. Selected 2. Unavailable

  final String id;
  final bool isAvailable;

  const seatItem({
    Key? key, 
    required this.id,
    this.isAvailable = true,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor(){

      if(!isAvailable){
        return kUnvailableColor;
      } else{
        if(isSelected){
          return kPrimaryColor;
        }else{
          return kAvailableColor;
        }
      }
    }

    borderColor(){
      if(!isAvailable){
        return kUnvailableColor;
      } else{
        return kPrimaryColor;
      }
    }

    child(){
      if(isSelected){
        return Center(
           child: Text(
            'YOU',
             style: whiteTextStyle.copyWith(
             fontWeight: semiBold,  
             ),
           ),
         );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if(isAvailable){
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
         color: backgroundColor(),
         borderRadius: BorderRadius.circular(15),
         border: Border.all(
          color: borderColor(),
          width: 2,
         ),
        ),
        child: child()
      ),
    );
  
  }
}