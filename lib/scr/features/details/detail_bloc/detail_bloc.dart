import 'package:aka_project/scr/common/data/location_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {

  final _locationBox = Hive.box<LocationModel>('location_box');
  List<LocationModel> items = [];

  DetailBloc() : super(const DetailState.loading()) {
    on<DetailEvent>(
      (event, emit) => event.map(
        getLocation: (value) => _getLocation(emit),
        saveLocation: (value) => _saveLocation(emit,value),
        deleteLocation: (value) => _deleteLocation(emit,value),
      ),
    );
  }

  void _getLocation(Emitter<DetailState> emit) {
    items = _locationBox.values.toList();
    emit(DetailState.success(items));
  }

  void _saveLocation(Emitter<DetailState> emit, _SaveLocationEvent value) {
    items.add(value.locationModel);
    _locationBox.addAll(items);
    _getLocation(emit);
  }

  Future<void> _deleteLocation(Emitter<DetailState> emit, _DeleteLocationEvent value) async {
    items.removeAt(int.parse(value.index));
    _locationBox.addAll(items);
    _getLocation(emit);
  }
}
