part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.gesture() = _Gesture;
  const factory HomeState.success(LocationModel location) = _Success;
  const factory HomeState.error() = _Error;
}
