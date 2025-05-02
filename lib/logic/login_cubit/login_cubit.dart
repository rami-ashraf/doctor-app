import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/api_links.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialStates());

  Dio request = Dio();


  Future<void> Login({

    required String email,

    required String pass,

  }) async {
    emit(LoginLoadingState());
    try {
      final response = await request.post(
        ApiLinks.loginUrl,
        data: {

          "email": email,

          "password": pass,

        },
      );

      //1- get token
      //2- save token in shared preferences


      if (response.statusCode == 200) {
        //get token
        final userToken = response.data['data']['token'];

        //save token in shared preferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_token', userToken);
        emit(LoginSucessState());
      }
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }
}