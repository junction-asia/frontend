import 'package:flutter_bloc/flutter_bloc.dart';

class Validate {
  final bool validate;
  final bool check;

  Validate(this.validate, this.check);
}

class SignupCubit extends Cubit<Validate> {
  SignupCubit() : super(Validate(false, false));

  void submitSingup(String Id, String password, String rePassword) {
    if (password != rePassword) {}
  }
}
