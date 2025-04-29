import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:meta/meta.dart';

import 'login_state.dart';

class SigninCubit extends Cubit<SigninStates> {
  SigninCubit() : super(SigninInitialStates());

  Dio request = Dio();

  Future<void> Signin({
    required String email,
    required String name,
    required String gender,
    required String phone,
    required String pass,
    required String confirmationPass,
  }) async {
    emit(SigninLoadingState());
    try {
      await request.post(
        "https://vcare.integration25.com/api/auth/register",
        data: {
          "name": name,
          "email": email,
          "phone": phone,
          "gender": gender,
          "password": pass,
          "password_confirmation": confirmationPass,
        },
      );
      emit(SigninSucessState());
    } catch (e) {
      emit(SigninErrorState(e.toString()));
    }
  }
}