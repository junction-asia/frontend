part of "memo_bloc.dart";

abstract class MemoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ClickThumbUpEvent extends MemoEvent {}

class ClickThumbDownEvent extends MemoEvent {}

class GiveStarEvent extends MemoEvent {}

class InitMemoEvent extends MemoEvent {
  InitMemoEvent({required this.lands, required this.landsName});

  final Lands lands;
  final String landsName;

  @override
  List<Object> get props => [lands, landsName];
}

class SubmitCommentMemoEvent extends MemoEvent {
  SubmitCommentMemoEvent({required this.comment, required this.id});

  final String comment;
  final int id;
  @override
  List<Object> get props => [comment, id];
}
