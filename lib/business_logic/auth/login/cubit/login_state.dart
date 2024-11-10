part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class LoginUpdate extends LoginState {
  final String id;
  LoginUpdate(this.id);
}
