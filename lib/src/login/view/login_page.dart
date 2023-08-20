import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/login/bloc/login_bloc.dart';
import 'package:leg_work/src/login/view/login_view.dart';

class LoginPate extends StatelessWidget {
  const LoginPate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc()..add(InitLoginEvent()),
      child: const LoginView(),
    );
  }
}
