part of 'auth_cubit.dart';

@immutable
abstract class AuthState extends Equatable {
  const AuthState();

  @ override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState{}

class AuthSucces extends AuthState{
  final UserModel user;
  
  AuthSucces(this.user);

  @override
  // TODO: implement props
  List<Object> get props => [user];
}

class AuthFailed extends AuthState{

  final String error;

  AuthFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}
