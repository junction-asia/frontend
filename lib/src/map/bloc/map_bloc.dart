import 'package:data/data/address/address_export.dart';
import 'package:data/data/land/land_export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

part 'map_event.dart';
part "map_state.dart";

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc(
      {required AddressRepository addressRepository,
      required LandRepository landRepository})
      : _addressRepository = addressRepository,
        _landRepository = landRepository,
        super(InitMapState()) {
    on<InitMapEvent>(_init);
    on<ChangeMapEvent>(_change);
  }

  final AddressRepository _addressRepository;
  final LandRepository _landRepository;

  Future<void> _init(
    InitMapEvent event,
    Emitter<MapState> emit,
  ) async {
    Position nowPosition = await Geolocator.getCurrentPosition();
    emit(ProgressMapState(position: nowPosition, lands: null, landName: null));
  }

  Future<void> _change(
    ChangeMapEvent event,
    Emitter<MapState> emit,
  ) async {
    final nowState = state as ProgressMapState;
    String address =
        await _addressRepository.getKaKaoAddressWithPosition(event.x, event.y);
    Lands newLand = await _landRepository.getLand(
        land(latitude: "${event.x}", longitude: "${event.y}", name: address));
    emit(nowState.copyWith(
      lands: newLand,
      landName: address,
    ));
  }
}
