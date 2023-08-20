part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingLoginState extends LoginState {}

class InitLoginState extends LoginState {
  InitLoginState({
    required this.textIdController,
    required this.textPasswordController,
  });
  TextEditingController textIdController;
  TextEditingController textPasswordController;

  @override
  List<Object?> get props => [textIdController, textPasswordController];
}
