// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:perfect_deals_price_predictor/src/aplication/login/login_bloc.dart'
    as _i7;
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart'
    as _i8;
import 'package:perfect_deals_price_predictor/src/domain/login/login_form_impl.dart'
    as _i4;
import 'package:perfect_deals_price_predictor/src/domain/signin/sing_in_form_impl.dart'
    as _i6;
import 'package:perfect_deals_price_predictor/src/infrastructure/login/i_login_form_model.dart'
    as _i3;
import 'package:perfect_deals_price_predictor/src/infrastructure/signin/i_sign_in_form_controller.dart'
    as _i5;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ILoginFormModel>(() => _i4.LoginFormImpl());
  gh.factory<_i5.ISignInFormModel>(() => _i6.SignInFormImpl());
  gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i3.ILoginFormModel>()));
  gh.singleton<_i8.SigningBloc>(_i8.SigningBloc(gh<_i5.ISignInFormModel>()));
  return getIt;
}
