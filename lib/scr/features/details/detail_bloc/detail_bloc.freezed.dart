// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String index) deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function(LocationModel locationModel)? saveLocation,
    TResult? Function(String index)? deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String index)? deleteLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationEvent value) getLocation,
    required TResult Function(_SaveLocationEvent value) saveLocation,
    required TResult Function(_DeleteLocationEvent value) deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationEvent value)? getLocation,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
    TResult? Function(_DeleteLocationEvent value)? deleteLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationEvent value)? getLocation,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    TResult Function(_DeleteLocationEvent value)? deleteLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLocationEventImplCopyWith<$Res> {
  factory _$$GetLocationEventImplCopyWith(_$GetLocationEventImpl value,
          $Res Function(_$GetLocationEventImpl) then) =
      __$$GetLocationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocationEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$GetLocationEventImpl>
    implements _$$GetLocationEventImplCopyWith<$Res> {
  __$$GetLocationEventImplCopyWithImpl(_$GetLocationEventImpl _value,
      $Res Function(_$GetLocationEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocationEventImpl implements _GetLocationEvent {
  const _$GetLocationEventImpl();

  @override
  String toString() {
    return 'DetailEvent.getLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String index) deleteLocation,
  }) {
    return getLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function(LocationModel locationModel)? saveLocation,
    TResult? Function(String index)? deleteLocation,
  }) {
    return getLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String index)? deleteLocation,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationEvent value) getLocation,
    required TResult Function(_SaveLocationEvent value) saveLocation,
    required TResult Function(_DeleteLocationEvent value) deleteLocation,
  }) {
    return getLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationEvent value)? getLocation,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
    TResult? Function(_DeleteLocationEvent value)? deleteLocation,
  }) {
    return getLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationEvent value)? getLocation,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    TResult Function(_DeleteLocationEvent value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (getLocation != null) {
      return getLocation(this);
    }
    return orElse();
  }
}

abstract class _GetLocationEvent implements DetailEvent {
  const factory _GetLocationEvent() = _$GetLocationEventImpl;
}

/// @nodoc
abstract class _$$SaveLocationEventImplCopyWith<$Res> {
  factory _$$SaveLocationEventImplCopyWith(_$SaveLocationEventImpl value,
          $Res Function(_$SaveLocationEventImpl) then) =
      __$$SaveLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel locationModel});
}

/// @nodoc
class __$$SaveLocationEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$SaveLocationEventImpl>
    implements _$$SaveLocationEventImplCopyWith<$Res> {
  __$$SaveLocationEventImplCopyWithImpl(_$SaveLocationEventImpl _value,
      $Res Function(_$SaveLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationModel = null,
  }) {
    return _then(_$SaveLocationEventImpl(
      null == locationModel
          ? _value.locationModel
          : locationModel // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$SaveLocationEventImpl implements _SaveLocationEvent {
  const _$SaveLocationEventImpl(this.locationModel);

  @override
  final LocationModel locationModel;

  @override
  String toString() {
    return 'DetailEvent.saveLocation(locationModel: $locationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveLocationEventImpl &&
            (identical(other.locationModel, locationModel) ||
                other.locationModel == locationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveLocationEventImplCopyWith<_$SaveLocationEventImpl> get copyWith =>
      __$$SaveLocationEventImplCopyWithImpl<_$SaveLocationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String index) deleteLocation,
  }) {
    return saveLocation(locationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function(LocationModel locationModel)? saveLocation,
    TResult? Function(String index)? deleteLocation,
  }) {
    return saveLocation?.call(locationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String index)? deleteLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(locationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationEvent value) getLocation,
    required TResult Function(_SaveLocationEvent value) saveLocation,
    required TResult Function(_DeleteLocationEvent value) deleteLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationEvent value)? getLocation,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
    TResult? Function(_DeleteLocationEvent value)? deleteLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationEvent value)? getLocation,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    TResult Function(_DeleteLocationEvent value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _SaveLocationEvent implements DetailEvent {
  const factory _SaveLocationEvent(final LocationModel locationModel) =
      _$SaveLocationEventImpl;

  LocationModel get locationModel;
  @JsonKey(ignore: true)
  _$$SaveLocationEventImplCopyWith<_$SaveLocationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLocationEventImplCopyWith<$Res> {
  factory _$$DeleteLocationEventImplCopyWith(_$DeleteLocationEventImpl value,
          $Res Function(_$DeleteLocationEventImpl) then) =
      __$$DeleteLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String index});
}

/// @nodoc
class __$$DeleteLocationEventImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DeleteLocationEventImpl>
    implements _$$DeleteLocationEventImplCopyWith<$Res> {
  __$$DeleteLocationEventImplCopyWithImpl(_$DeleteLocationEventImpl _value,
      $Res Function(_$DeleteLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteLocationEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteLocationEventImpl implements _DeleteLocationEvent {
  const _$DeleteLocationEventImpl(this.index);

  @override
  final String index;

  @override
  String toString() {
    return 'DetailEvent.deleteLocation(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLocationEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLocationEventImplCopyWith<_$DeleteLocationEventImpl> get copyWith =>
      __$$DeleteLocationEventImplCopyWithImpl<_$DeleteLocationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocation,
    required TResult Function(LocationModel locationModel) saveLocation,
    required TResult Function(String index) deleteLocation,
  }) {
    return deleteLocation(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocation,
    TResult? Function(LocationModel locationModel)? saveLocation,
    TResult? Function(String index)? deleteLocation,
  }) {
    return deleteLocation?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocation,
    TResult Function(LocationModel locationModel)? saveLocation,
    TResult Function(String index)? deleteLocation,
    required TResult orElse(),
  }) {
    if (deleteLocation != null) {
      return deleteLocation(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationEvent value) getLocation,
    required TResult Function(_SaveLocationEvent value) saveLocation,
    required TResult Function(_DeleteLocationEvent value) deleteLocation,
  }) {
    return deleteLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationEvent value)? getLocation,
    TResult? Function(_SaveLocationEvent value)? saveLocation,
    TResult? Function(_DeleteLocationEvent value)? deleteLocation,
  }) {
    return deleteLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationEvent value)? getLocation,
    TResult Function(_SaveLocationEvent value)? saveLocation,
    TResult Function(_DeleteLocationEvent value)? deleteLocation,
    required TResult orElse(),
  }) {
    if (deleteLocation != null) {
      return deleteLocation(this);
    }
    return orElse();
  }
}

abstract class _DeleteLocationEvent implements DetailEvent {
  const factory _DeleteLocationEvent(final String index) =
      _$DeleteLocationEventImpl;

  String get index;
  @JsonKey(ignore: true)
  _$$DeleteLocationEventImplCopyWith<_$DeleteLocationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LocationModel> items) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> items)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LocationModel> items)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'DetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LocationModel> items) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> items)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LocationModel> items)? success,
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
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements DetailState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocationModel> items});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SuccessStateImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(final List<LocationModel> items) : _items = items;

  final List<LocationModel> _items;
  @override
  List<LocationModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'DetailState.success(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LocationModel> items) success,
    required TResult Function() error,
  }) {
    return success(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> items)? success,
    TResult? Function()? error,
  }) {
    return success?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LocationModel> items)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements DetailState {
  const factory _SuccessState(final List<LocationModel> items) =
      _$SuccessStateImpl;

  List<LocationModel> get items;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'DetailState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LocationModel> items) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LocationModel> items)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LocationModel> items)? success,
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
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements DetailState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
