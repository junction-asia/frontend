import 'package:data/data/land/land_export.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/memo/bloc/memo_bloc.dart';
import 'package:leg_work/src/memo/view/memo_seperate.dart';

class MemoPage extends StatelessWidget {
  const MemoPage({super.key, required this.lands, required this.landsName});

  final Lands lands;
  final String landsName;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            MemoBloc(landRepository: context.read<LandRepository>())
              ..add(InitMemoEvent(
                lands: lands,
                landsName: landsName,
              )),
        child: const MemoSeperate());
  }
}
