import 'package:airplane/models/destination_model.dart';
import 'package:airplane/services/destination_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../../services/destinationtile_service.dart';
import 'destination_cubit.dart';

class DestinationtileCubit extends Cubit<DestinationState> {
  DestinationtileCubit() : super(DestinationInitial());

  void fetchDestinationstile() async{

    try {
      emit(DestinationLoading());

      List<DestinationModel> destinationtile = 
        await Destinationtile().fetchDestinationstile();

        emit(DestinationSuccess(destinationtile));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}