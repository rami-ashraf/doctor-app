import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:doctor_app/logic/signup_cubit/signup_state.dart';
import 'package:meta/meta.dart';

import '../../core/api_links.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialStates());

  Dio request = Dio();

  Future<void> signUp({
    required String email,
    required String name,
    required String gender,
    required String phone,
    required String pass,
    required String confirmationPass,
  }) async {
    emit(SignUpLoadingState());
    try {
      await request.post(
        ApiLinks.signUpUrl,
        data: {
          "name": name,
          "email": email,
          "phone": phone,
          "gender": gender,
          "password": pass,
          "password_confirmation": confirmationPass,
        },
      );
      emit(SignUpSucessState());
    } catch (e) {
      emit(SignUpErrorState(e.toString()));
    }
  }
}