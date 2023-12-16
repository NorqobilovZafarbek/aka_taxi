part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.getLocation() = _GetLocationEvent;
  const factory DetailEvent.saveLocation(LocationModel locationModel) = _SaveLocationEvent;
  const factory DetailEvent.deleteLocation(String index) = _DeleteLocationEvent;
}
