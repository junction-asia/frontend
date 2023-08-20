import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoadingLoginState()) {
    on<InitLoginEvent>(_init);
    on<SubmitLoginEvent>(_submit);
  }

  Future<void> _init(
    InitLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      InitLoginState(
        textIdController: TextEditingController(),
        textPasswordController: TextEditingController(),
      ),
    );
  }

  Future<bool> _submit(
    SubmitLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    final nowState = state as InitLoginState;
    //api 콜
    //토큰이 콜백 되면
    //토큰 있으면 true, 없으면 false 주자
    return true;
  }
}
