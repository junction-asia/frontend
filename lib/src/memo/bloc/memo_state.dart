part of 'memo_bloc.dart';

abstract class MemoState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProgressMemoState extends MemoState {
  ProgressMemoState({
    required this.lands,
    required this.landsName,
    required this.groupedInfo,
  });
  final Lands lands;
  final String landsName;
  final Map<String, List<Infos>> groupedInfo;

  @override
  List<Object?> get props => [
        lands,
        landsName,
        groupedInfo,
      ];
}

class InitMemoState extends MemoState {
  @override
  List<Object?> get props => [];
}
