import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/login/bloc/login_bloc.dart';
import 'package:leg_work/src/login/view/login_progress_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      if (state is LoadingLoginState) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return const LoginProgressView();
      }
    });
  }
}
