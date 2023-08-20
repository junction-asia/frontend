part of "map_bloc.dart";

abstract class MapState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitMapState extends MapState {
  @override
  List<Object?> get props => [];
}

class LoadingMapState extends MapState {
  @override
  List<Object?> get props => [];
}

class ProgressMapState extends MapState {
  ProgressMapState({
    required this.position,
    required this.lands,
    required this.landName,
  });
  Position position;
  Lands? lands;
  String? landName;

  ProgressMapState copyWith({
    Position? position,
    Lands? lands,
    String? landName,
  }) {
    return ProgressMapState(
        landName: landName ?? this.landName,
        position: position ?? this.position,
        lands: lands ?? this.lands);
  }

  @override
  List<Object?> get props => [position, lands, landName];
}
