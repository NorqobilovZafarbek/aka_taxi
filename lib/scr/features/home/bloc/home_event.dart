part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCitiName(Point point) = _GetCitiNameEvent;
  const factory HomeEvent.gesture() = _GestureEvent;
  const factory HomeEvent.saveLocation(LocationModel model) = _SaveLocationEvent;
}
