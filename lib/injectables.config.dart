// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:perfect_deals_price_predictor/src/aplication/auth/auth_bloc.dart'
    as _i15;
import 'package:perfect_deals_price_predictor/src/aplication/login/login_bloc.dart'
    as _i13;
import 'package:perfect_deals_price_predictor/src/aplication/predicted_price/predicted_price_bloc.dart'
    as _i18;
import 'package:perfect_deals_price_predictor/src/aplication/signin/signing_bloc.dart'
    as _i14;
import 'package:perfect_deals_price_predictor/src/domain/auth/fire_base_auth.dart'
    as _i6;
import 'package:perfect_deals_price_predictor/src/domain/login/login_form_impl.dart'
    as _i8;
import 'package:perfect_deals_price_predictor/src/domain/predicted_price/api_google_place_data_service_impl.dart'
    as _i4;
import 'package:perfect_deals_price_predictor/src/domain/predicted_price/i_predicte_price_facade.dart'
    as _i16;
import 'package:perfect_deals_price_predictor/src/domain/predicted_price/predicted_price_form_impl.dart'
    as _i10;
import 'package:perfect_deals_price_predictor/src/domain/signin/sing_in_form_impl.dart'
    as _i12;
import 'package:perfect_deals_price_predictor/src/infrastructure/auth/i_auth_data_service.dart'
    as _i5;
import 'package:perfect_deals_price_predictor/src/infrastructure/login/i_login_form_model.dart'
    as _i7;
import 'package:perfect_deals_price_predictor/src/infrastructure/predicted_price/i_api_google_place_data_service.dart'
    as _i3;
import 'package:perfect_deals_price_predictor/src/infrastructure/predicted_price/i_predicted_price_form.dart'
    as _i9;
import 'package:perfect_deals_price_predictor/src/infrastructure/predicted_price/predicted_price_facade_impl.dart'
    as _i17;
import 'package:perfect_deals_price_predictor/src/infrastructure/signin/i_sign_in_form_controller.dart'
    as _i11;

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
  gh.factory<_i3.IAPIGooglePlaceDataService>(
      () => _i4.APIGooglePlaceDataServiceImpl());
  gh.factory<_i5.IAuthDataService>(() => _i6.Auth());
  gh.factory<_i7.ILoginFormModel>(() => _i8.LoginFormImpl());
  gh.factory<_i9.IPredictedPriceForm>(() => _i10.PredictedPriceFormImpl());
  gh.factory<_i11.ISignInFormModel>(() => _i12.SignInFormImpl());
  gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(gh<_i7.ILoginFormModel>()));
  gh.singleton<_i14.SigningBloc>(_i14.SigningBloc(gh<_i11.ISignInFormModel>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i5.IAuthDataService>()));
  gh.factory<_i16.IPredictedPriceFacade>(() => _i17.PredictedPriceFacadeImpl(
        predictedPriceForm: gh<_i9.IPredictedPriceForm>(),
        googleDataService: gh<_i3.IAPIGooglePlaceDataService>(),
      ));
  gh.factory<_i18.PredictedPriceBloc>(
      () => _i18.PredictedPriceBloc(gh<_i16.IPredictedPriceFacade>()));
  return getIt;
}
