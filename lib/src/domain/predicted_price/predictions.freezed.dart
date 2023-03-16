// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predictions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Predictions _$PredictionsFromJson(Map<String, dynamic> json) {
  return _Predictions.fromJson(json);
}

/// @nodoc
mixin _$Predictions {
  List<AddressPrediction> get predictions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionsCopyWith<Predictions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionsCopyWith<$Res> {
  factory $PredictionsCopyWith(
          Predictions value, $Res Function(Predictions) then) =
      _$PredictionsCopyWithImpl<$Res, Predictions>;
  @useResult
  $Res call({List<AddressPrediction> predictions});
}

/// @nodoc
class _$PredictionsCopyWithImpl<$Res, $Val extends Predictions>
    implements $PredictionsCopyWith<$Res> {
  _$PredictionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
  }) {
    return _then(_value.copyWith(
      predictions: null == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<AddressPrediction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PredictionsCopyWith<$Res>
    implements $PredictionsCopyWith<$Res> {
  factory _$$_PredictionsCopyWith(
          _$_Predictions value, $Res Function(_$_Predictions) then) =
      __$$_PredictionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddressPrediction> predictions});
}

/// @nodoc
class __$$_PredictionsCopyWithImpl<$Res>
    extends _$PredictionsCopyWithImpl<$Res, _$_Predictions>
    implements _$$_PredictionsCopyWith<$Res> {
  __$$_PredictionsCopyWithImpl(
      _$_Predictions _value, $Res Function(_$_Predictions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = null,
  }) {
    return _then(_$_Predictions(
      null == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<AddressPrediction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Predictions extends _Predictions {
  _$_Predictions(final List<AddressPrediction> predictions)
      : _predictions = predictions,
        super._();

  factory _$_Predictions.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionsFromJson(json);

  final List<AddressPrediction> _predictions;
  @override
  List<AddressPrediction> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  @override
  String toString() {
    return 'Predictions(predictions: $predictions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Predictions &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_predictions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredictionsCopyWith<_$_Predictions> get copyWith =>
      __$$_PredictionsCopyWithImpl<_$_Predictions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionsToJson(
      this,
    );
  }
}

abstract class _Predictions extends Predictions {
  factory _Predictions(final List<AddressPrediction> predictions) =
      _$_Predictions;
  _Predictions._() : super._();

  factory _Predictions.fromJson(Map<String, dynamic> json) =
      _$_Predictions.fromJson;

  @override
  List<AddressPrediction> get predictions;
  @override
  @JsonKey(ignore: true)
  _$$_PredictionsCopyWith<_$_Predictions> get copyWith =>
      throw _privateConstructorUsedError;
}
