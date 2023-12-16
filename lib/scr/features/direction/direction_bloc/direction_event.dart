part of 'direction_bloc.dart';

@immutable
abstract class DirectionEvent with _DirectionEventPatternMatcher {}

class GetCurrentPosition extends DirectionEvent {
  final BuildContext context;

  GetCurrentPosition({required this.context});

  @override
  T map<T>({
    required T Function(GetCurrentPosition event) onCurrentPosition,
  }) => onCurrentPosition(this);
}

mixin _DirectionEventPatternMatcher {
  T map<T>({
    required T Function(GetCurrentPosition event) onCurrentPosition,
  });
}
