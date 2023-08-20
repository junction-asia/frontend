part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitMapEvent extends MapEvent {
  @override
  List<Object> get props => [];
}

class ChangeMapEvent extends MapEvent {
  ChangeMapEvent({required this.x, required this.y});

  double x;
  double y;
  @override
  List<Object> get props => [x, y];
}
