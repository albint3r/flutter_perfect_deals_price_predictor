import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/auth/i_auth_data_service.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(IAuthDataService auth)
      : super(AuthState.started(
          auth: auth,
        )) {
    on<AuthEvent>(
      (event, emit) {
        event.when(
          initial: () {},
          validateUserCredentials: () {},
        );
      },
    );
  }
}
