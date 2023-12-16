// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Point point) getCitiName,
    required TResult Function() gesture,
    required TResult Function(LocationModel model) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Point point)? getCitiName,
    TResult? Function()? gesture,
    TResult? Function(LocationModel model)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Point point)? getCitiName,
    TResult Function()? gesture,
    TResult Function(LocationModel model)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiNameEvent value) getCitiName,
    required TResult Function(_GestureEvent value) gesture,
    required TResult Function(_SaveLocationEvent value) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiNameEvent value)? getCitiName,
    TResult? Function(_GestureEvent value)? gesture,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiNameEvent value)? getCitiName,
    TResult Function(_GestureEvent value)? gesture,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCitiNameEventImplCopyWith<$Res> {
  factory _$$GetCitiNameEventImplCopyWith(_$GetCitiNameEventImpl value,
          $Res Function(_$GetCitiNameEventImpl) then) =
      __$$GetCitiNameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Point point});
}

/// @nodoc
class __$$GetCitiNameEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCitiNameEventImpl>
    implements _$$GetCitiNameEventImplCopyWith<$Res> {
  __$$GetCitiNameEventImplCopyWithImpl(_$GetCitiNameEventImpl _value,
      $Res Function(_$GetCitiNameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
  }) {
    return _then(_$GetCitiNameEventImpl(
      null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc

class _$GetCitiNameEventImpl implements _GetCitiNameEvent {
  const _$GetCitiNameEventImpl(this.point);

  @override
  final Point point;

  @override
  String toString() {
    return 'HomeEvent.getCitiName(point: $point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiNameEventImpl &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiNameEventImplCopyWith<_$GetCitiNameEventImpl> get copyWith =>
      __$$GetCitiNameEventImplCopyWithImpl<_$GetCitiNameEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Point point) getCitiName,
    required TResult Function() gesture,
    required TResult Function(LocationModel model) saveLocation,
  }) {
    return getCitiName(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Point point)? getCitiName,
    TResult? Function()? gesture,
    TResult? Function(LocationModel model)? saveLocation,
  }) {
    return getCitiName?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Point point)? getCitiName,
    TResult Function()? gesture,
    TResult Function(LocationModel model)? saveLocation,
    required TResult orElse(),
  }) {
    if (getCitiName != null) {
      return getCitiName(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiNameEvent value) getCitiName,
    required TResult Function(_GestureEvent value) gesture,
    required TResult Function(_SaveLocationEvent value) saveLocation,
  }) {
    return getCitiName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiNameEvent value)? getCitiName,
    TResult? Function(_GestureEvent value)? gesture,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
  }) {
    return getCitiName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiNameEvent value)? getCitiName,
    TResult Function(_GestureEvent value)? gesture,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) {
    if (getCitiName != null) {
      return getCitiName(this);
    }
    return orElse();
  }
}

abstract class _GetCitiNameEvent implements HomeEvent {
  const factory _GetCitiNameEvent(final Point point) = _$GetCitiNameEventImpl;

  Point get point;
  @JsonKey(ignore: true)
  _$$GetCitiNameEventImplCopyWith<_$GetCitiNameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GestureEventImplCopyWith<$Res> {
  factory _$$GestureEventImplCopyWith(
          _$GestureEventImpl value, $Res Function(_$GestureEventImpl) then) =
      __$$GestureEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GestureEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GestureEventImpl>
    implements _$$GestureEventImplCopyWith<$Res> {
  __$$GestureEventImplCopyWithImpl(
      _$GestureEventImpl _value, $Res Function(_$GestureEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GestureEventImpl implements _GestureEvent {
  const _$GestureEventImpl();

  @override
  String toString() {
    return 'HomeEvent.gesture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GestureEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Point point) getCitiName,
    required TResult Function() gesture,
    required TResult Function(LocationModel model) saveLocation,
  }) {
    return gesture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Point point)? getCitiName,
    TResult? Function()? gesture,
    TResult? Function(LocationModel model)? saveLocation,
  }) {
    return gesture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Point point)? getCitiName,
    TResult Function()? gesture,
    TResult Function(LocationModel model)? saveLocation,
    required TResult orElse(),
  }) {
    if (gesture != null) {
      return gesture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiNameEvent value) getCitiName,
    required TResult Function(_GestureEvent value) gesture,
    required TResult Function(_SaveLocationEvent value) saveLocation,
  }) {
    return gesture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiNameEvent value)? getCitiName,
    TResult? Function(_GestureEvent value)? gesture,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
  }) {
    return gesture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiNameEvent value)? getCitiName,
    TResult Function(_GestureEvent value)? gesture,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) {
    if (gesture != null) {
      return gesture(this);
    }
    return orElse();
  }
}

abstract class _GestureEvent implements HomeEvent {
  const factory _GestureEvent() = _$GestureEventImpl;
}

/// @nodoc
abstract class _$$SaveLocationEventImplCopyWith<$Res> {
  factory _$$SaveLocationEventImplCopyWith(_$SaveLocationEventImpl value,
          $Res Function(_$SaveLocationEventImpl) then) =
      __$$SaveLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel model});
}

/// @nodoc
class __$$SaveLocationEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SaveLocationEventImpl>
    implements _$$SaveLocationEventImplCopyWith<$Res> {
  __$$SaveLocationEventImplCopyWithImpl(_$SaveLocationEventImpl _value,
      $Res Function(_$SaveLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SaveLocationEventImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$SaveLocationEventImpl implements _SaveLocationEvent {
  const _$SaveLocationEventImpl(this.model);

  @override
  final LocationModel model;

  @override
  String toString() {
    return 'HomeEvent.saveLocation(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveLocationEventImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveLocationEventImplCopyWith<_$SaveLocationEventImpl> get copyWith =>
      __$$SaveLocationEventImplCopyWithImpl<_$SaveLocationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Point point) getCitiName,
    required TResult Function() gesture,
    required TResult Function(LocationModel model) saveLocation,
  }) {
    return saveLocation(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Point point)? getCitiName,
    TResult? Function()? gesture,
    TResult? Function(LocationModel model)? saveLocation,
  }) {
    return saveLocation?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Point point)? getCitiName,
    TResult Function()? gesture,
    TResult Function(LocationModel model)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiNameEvent value) getCitiName,
    required TResult Function(_GestureEvent value) gesture,
    required TResult Function(_SaveLocationEvent value) saveLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiNameEvent value)? getCitiName,
    TResult? Function(_GestureEvent value)? gesture,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiNameEvent value)? getCitiName,
    TResult Function(_GestureEvent value)? gesture,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _SaveLocationEvent implements HomeEvent {
  const factory _SaveLocationEvent(final LocationModel model) =
      _$SaveLocationEventImpl;

  LocationModel get model;
  @JsonKey(ignore: true)
  _$$SaveLocationEventImplCopyWith<_$SaveLocationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() gesture,
    required TResult Function(LocationModel location) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? gesture,
    TResult? Function(LocationModel location)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? gesture,
    TResult Function(LocationModel location)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Gesture value) gesture,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Gesture value)? gesture,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Gesture value)? gesture,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() gesture,
    required TResult Function(LocationModel location) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? gesture,
    TResult? Function(LocationModel location)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? gesture,
    TResult Function(LocationModel location)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Gesture value) gesture,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Gesture value)? gesture,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Gesture value)? gesture,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GestureImplCopyWith<$Res> {
  factory _$$GestureImplCopyWith(
          _$GestureImpl value, $Res Function(_$GestureImpl) then) =
      __$$GestureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GestureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GestureImpl>
    implements _$$GestureImplCopyWith<$Res> {
  __$$GestureImplCopyWithImpl(
      _$GestureImpl _value, $Res Function(_$GestureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GestureImpl implements _Gesture {
  const _$GestureImpl();

  @override
  String toString() {
    return 'HomeState.gesture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GestureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() gesture,
    required TResult Function(LocationModel location) success,
    required TResult Function() error,
  }) {
    return gesture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? gesture,
    TResult? Function(LocationModel location)? success,
    TResult? Function()? error,
  }) {
    return gesture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? gesture,
    TResult Function(LocationModel location)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (gesture != null) {
      return gesture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Gesture value) gesture,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return gesture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Gesture value)? gesture,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return gesture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Gesture value)? gesture,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (gesture != null) {
      return gesture(this);
    }
    return orElse();
  }
}

abstract class _Gesture implements HomeState {
  const factory _Gesture() = _$GestureImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel location});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SuccessImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'HomeState.success(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() gesture,
    required TResult Function(LocationModel location) success,
    required TResult Function() error,
  }) {
    return success(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? gesture,
    TResult? Function(LocationModel location)? success,
    TResult? Function()? error,
  }) {
    return success?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? gesture,
    TResult Function(LocationModel location)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Gesture value) gesture,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Gesture value)? gesture,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Gesture value)? gesture,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements HomeState {
  const factory _Success(final LocationModel location) = _$SuccessImpl;

  LocationModel get location;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() gesture,
    required TResult Function(LocationModel location) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? gesture,
    TResult? Function(LocationModel location)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? gesture,
    TResult Function(LocationModel location)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Gesture value) gesture,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Gesture value)? gesture,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Gesture value)? gesture,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error() = _$ErrorImpl;
}
