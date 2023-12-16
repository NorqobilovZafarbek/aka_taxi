part of 'direction_bloc.dart';

@immutable
abstract class DirectionState with _DirectionStatePatternMatcher {}

class DirectionLoadingState extends DirectionState {
  @override
  T map<T>({
    required Function(DirectionLoadingState state) onLoading,
    required Function(DirectionSuccessState state) onSuccess,
    required Function(DirectionErrorState state) onError,
  }) => onLoading(this);
}

class DirectionSuccessState extends DirectionState {
  final List<MapObject> objects;

  DirectionSuccessState({required this.objects});

  @override
  T map<T>({
    required Function(DirectionLoadingState state) onLoading,
    required Function(DirectionSuccessState state) onSuccess,
    required Function(DirectionErrorState state) onError,
  }) => onSuccess(this);
}

class DirectionErrorState extends DirectionState {
  final String message;

  DirectionErrorState({
    required this.message,
  });

  @override
  T map<T>({
    required Function(DirectionLoadingState state) onLoading,
    required Function(DirectionSuccessState state) onSuccess,
    required Function(DirectionErrorState state) onError,
  }) => onError(this);
}

mixin _DirectionStatePatternMatcher {
  T map<T>({
    required T Function(DirectionLoadingState state) onLoading,
    required T Function(DirectionSuccessState state) onSuccess,
    required T Function(DirectionErrorState state) onError,
  });
}
