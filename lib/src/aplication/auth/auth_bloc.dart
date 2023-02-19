import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/auth/i_auth_data_service.dart';
import '../../infrastructure/signin/i_sign_in_form_controller.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(IAuthDataService auth)
      : super(AuthState.initial(
          auth: auth,
          hashTime: DateTime.now().millisecondsSinceEpoch,
        )) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          initial: () {
            emit(AuthState.initial(
              auth: state.auth,
              hashTime: DateTime.now().millisecondsSinceEpoch,
            ));
          },
          createUserWithEmailAndPassword: (signInFormModel) async {
            try {
              await state.auth.createUserWithEmailAndPassword(
                email: signInFormModel.email,
                password: signInFormModel.password,
              );
              emit(
                AuthState.initial(
                  auth: state.auth,
                  hashTime: DateTime.now().millisecondsSinceEpoch,
                ),
              );
            } catch (e) {
              print('AuthBloc [createUserWithEmailAndPassword] -> $e');
              print('state->$state');
              emit(
                state.copyWith(
                  auth: state.auth,
                  hashTime: DateTime.now().millisecondsSinceEpoch,
                ),
              );
            }
          },
        );
      },
    );
  }
}
