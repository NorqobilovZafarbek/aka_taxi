part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.loading() = _LoadingState;
  const factory DetailState.success(List<LocationModel> items) = _SuccessState;
  const factory DetailState.error() = _ErrorState;
}
