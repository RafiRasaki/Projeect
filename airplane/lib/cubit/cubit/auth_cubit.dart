import 'dart:io';

import 'package:airplane/models/user_model.dart';
import 'package:airplane/services/auth_services.dart';
import 'package:airplane/services/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

   // Fitur Sign-in
  void signIn ({required String email, required String password}) async{
    try {
      emit(AuthLoading());
      UserModel user = await AuthService().signIn(
        email: email,
        password: password,
        );
        emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  // Fitur Sign-up
  void signUp({
    required String email, 
    required String password,
    required String name, 
    String hobby = ''}) async{

    try {
      emit(AuthLoading());

      UserModel user = await AuthService()
      .signUp(email: email, password: password, name: name, hobby: hobby);

      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  // Fitur Sign-out
  void signOut() async{
    try{
      emit(AuthLoading());
     await AuthService().signOut();
     emit(AuthInitial());
    } catch (e){
      emit(AuthFailed(e.toString()));
    }
  }

  // Data user menjadi dinamis
  void getCurrentUser(String id) async{
    try {
      UserModel user = await UserService().getUserById(id);
      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  } 
}
