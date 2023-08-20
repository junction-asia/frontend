part of 'camera_bloc.dart';

abstract class CameraState extends Equatable {
  const CameraState();

  @override
  List<Object?> get props => [];
}

class InitCameraState extends CameraState {}

class SubmittingCameraState extends CameraState {}

class SubmittedCameraState extends CameraState {}

class TakeCameraState extends CameraState {
  TakeCameraState({
    required this.imageList,
    this.cameraIndex = 0,
    this.flashIndex = 0,
    this.controller,
    this.initializeControllerFuture,
  });

  List<File>? imageList;
  int cameraIndex;
  int flashIndex;
  CameraController? controller;
  Future<void>? initializeControllerFuture;

  TakeCameraState copyWith({
    List<File>? imageList,
    int? flashIndex,
    int? cameraIndex,
    CameraController? controller,
    Future<void>? initializeControllerFuture,
  }) {
    return TakeCameraState(
      imageList: imageList ?? this.imageList,
      flashIndex: flashIndex ?? this.flashIndex,
      cameraIndex: cameraIndex ?? this.cameraIndex,
      controller: controller ?? this.controller,
      initializeControllerFuture:
          initializeControllerFuture ?? this.initializeControllerFuture,
    );
  }

  @override
  List<Object?> get props => [
        imageList,
        flashIndex,
        cameraIndex,
        controller,
        initializeControllerFuture,
      ];
}
