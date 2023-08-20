import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/camera/bloc/camera_bloc.dart';
import 'package:leg_work/src/camera/view/camera_view.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CameraBloc()..add(InitCameraEvent()),
      child: const CameraView(),
    );
  }
}
