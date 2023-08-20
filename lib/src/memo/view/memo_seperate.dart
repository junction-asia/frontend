import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/memo/bloc/memo_bloc.dart';
import 'package:leg_work/src/memo/view/memo_view.dart';

class MemoSeperate extends StatelessWidget {
  const MemoSeperate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemoBloc, MemoState>(builder: (context, state) {
      if (state is ProgressMemoState) {
        return const MemoView();
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
