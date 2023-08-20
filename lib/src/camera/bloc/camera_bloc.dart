import 'dart:io';

import 'package:camera/camera.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'camera_state.dart';
part 'camera_event.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(InitCameraState()) {
    on<InitCameraEvent>(_initCamera);
    // on<TakePictureEvent>(_take);
    // on<RemovePictureEvent>(_remove);
    on<FlashChangeEvent>(_flash);
    on<CameraChangeEvent>(_camera);
    // on<SubmitMissionEvent>(_submit);
  }

  Future<void> _initCamera(
    InitCameraEvent event,
    Emitter<CameraState> emit,
  ) async {
    emit(TakeCameraState(imageList: const []));
    final nowState = state as TakeCameraState;

    final camera = await availableCameras();
    final controller = CameraController(
        camera[nowState.cameraIndex], ResolutionPreset.medium,
        enableAudio: false);
    final initializeControllerFuture = controller.initialize();
    emit(
      nowState.copyWith(
        controller: controller,
        initializeControllerFuture: initializeControllerFuture,
      ),
    );
  }

  List<FlashMode> flashMode = [FlashMode.auto, FlashMode.always, FlashMode.off];

  Future<void> _flash(
    FlashChangeEvent event,
    Emitter<CameraState> emit,
  ) async {
    final nowState = state as TakeCameraState;
    int nowFlashIndex = nowState.flashIndex;
    if (++nowFlashIndex >= 3) {
      nowFlashIndex -= 3;
    }
    nowState.controller!.setFlashMode(flashMode[nowFlashIndex]);
    emit(nowState.copyWith(
        controller: nowState.controller, flashIndex: nowFlashIndex));
  }

  Future<void> _camera(
    CameraChangeEvent event,
    Emitter<CameraState> emit,
  ) async {
    final nowState = state as TakeCameraState;
    int nowCameraIndex = nowState.cameraIndex;

    if (++nowCameraIndex >= 2) {
      nowCameraIndex -= 2;
    }
    final camera = await availableCameras();
    final controller = CameraController(
        camera[nowCameraIndex], ResolutionPreset.medium,
        enableAudio: false);
    final initializeControllerFuture = controller.initialize();

    emit(nowState.copyWith(
      cameraIndex: nowCameraIndex,
      controller: controller,
      initializeControllerFuture: initializeControllerFuture,
    ));
  }

  Future<void> _take(
    TakePictureEvent event,
    Emitter<CameraState> emit,
  ) async {
    final nowState = state as TakeCameraState;

    final captureImage = await nowState.controller!.takePicture().then((value) {
      return File(value.path);
    });
    List<File> newFileList = nowState.imageList!..add(captureImage);

    emit(nowState.copyWith(
      imageList: newFileList,
    ));
  }
}
