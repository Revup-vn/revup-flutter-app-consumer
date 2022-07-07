import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial(isLoginButtonEnabled: false)) {
    on<_Start>((event, emit) {
      emit(
        LoginState.initial(isLoginButtonEnabled: event.isLoginButtonEnabled),
      );
    });

    on<_Submit>((event, emit) {}); // TODO(cantgim): implement submit event
  }
}