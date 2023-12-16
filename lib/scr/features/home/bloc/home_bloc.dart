import 'package:aka_project/scr/common/data/location_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../common/services/repository/dio_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  ICitiesRepository repository = LocationRepository();

  HomeBloc() : super(const HomeState.loading()) {
    on<HomeEvent>(
      (event, emit) => event.map(
        getCitiName: (value) => _getCitiName(emit, value),
        gesture: (value) => _onGesture(emit, value),
        saveLocation: (value) => _onSaveLocation(emit, value),
      ),
    );
  }

  Future<void> _getCitiName(
      Emitter<HomeState> emit, _GetCitiNameEvent value) async {
    emit(const HomeState.loading());
    String? location = await repository.getLocation(value.point);
    LocationModel locationModel = LocationModel(
      name: location ?? "",
      lon: value.point.longitude,
      lat: value.point.latitude,
    );
    emit(HomeState.success(locationModel));
  }

  void _onGesture(Emitter<HomeState> emit, _GestureEvent value) {
    emit(const HomeState.gesture());
  }

  void _onSaveLocation(Emitter<HomeState> emit, _SaveLocationEvent value) {}
}
