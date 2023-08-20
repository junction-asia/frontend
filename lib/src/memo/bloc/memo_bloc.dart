import 'package:data/data/land/land_export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'memo_event.dart';
part 'memo_state.dart';

class MemoBloc extends Bloc<MemoEvent, MemoState> {
  MemoBloc({required LandRepository landRepository})
      : _landRepository = landRepository,
        super(InitMemoState()) {
    on<ClickThumbUpEvent>(_thumbUp);
    on<ClickThumbDownEvent>(_thumbDown);
    on<GiveStarEvent>(_giveStar);
    on<InitMemoEvent>(_init);
    on<SubmitCommentMemoEvent>(_comment);
  }

  final LandRepository _landRepository;

  Future<void> _thumbUp(
    ClickThumbUpEvent event,
    Emitter<MemoState> emit,
  ) async {}

  Future<void> _thumbDown(
    ClickThumbDownEvent event,
    Emitter<MemoState> emit,
  ) async {}

  Future<void> _giveStar(
    GiveStarEvent event,
    Emitter<MemoState> emit,
  ) async {}

  Future<void> seperate(
      Lands lands, Map<String, List<Infos>> groupedInfos) async {
    for (var info in lands.infos) {
      String groupName = info.group_name;
      if (!groupedInfos.containsKey(groupName)) {
        groupedInfos[groupName] = [];
      }
      groupedInfos[groupName]!.add(info);
    }
  }

  Future<void> _init(
    InitMemoEvent event,
    Emitter<MemoState> emit,
  ) async {
    Map<String, List<Infos>> groupedInfos = {};

    await seperate(event.lands, groupedInfos);

    emit(ProgressMemoState(
      lands: event.lands,
      landsName: event.landsName,
      groupedInfo: groupedInfos,
    ));
  }

  Future<void> _comment(
    SubmitCommentMemoEvent event,
    Emitter<MemoState> emit,
  ) async {
    await _landRepository.postLandComment(event.comment, event.id);
  }
}
