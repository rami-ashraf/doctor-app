class SigninStates {}

class SigninInitialStates extends SigninStates {}

class SigninLoadingState extends SigninStates {}

class SigninSucessState extends SigninStates {}

class SigninErrorState extends SigninStates {

  final String error;
  SigninErrorState(this.error);

}


