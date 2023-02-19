import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:perfect_deals_price_predictor/src/infrastructure/login/i_login_form_model.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    ILoginFormModel loginFormModel,
  ) : super(
          LoginState.initial(
            loginFormModel: loginFormModel,
          ),
        );
}
