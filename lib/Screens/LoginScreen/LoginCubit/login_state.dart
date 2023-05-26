part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final LoginModel login;

  LoginSuccessState(this.login);
}

class LoginErrorState extends LoginState {
  final String error;

  LoginErrorState(this.error);

}

class ShowPasswordState extends LoginState {}

