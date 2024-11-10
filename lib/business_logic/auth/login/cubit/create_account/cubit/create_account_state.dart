part of 'create_account_cubit.dart';

@immutable
sealed class CreateAccountState {}

final class CreateAccountInitial extends CreateAccountState {}



class CreateAccountUpdate extends CreateAccountState {
  final String id;
  CreateAccountUpdate(this.id);
}

