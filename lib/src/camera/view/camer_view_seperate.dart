import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/camera/bloc/camera_bloc.dart';
import 'package:leg_work/src/camera/view/camera_view.dart';

class CameraViewSeperate extends StatelessWidget {
  const CameraViewSeperate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        if (state is TakeCameraState) {
          return const CameraView();
        } else {
          return Container(
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
