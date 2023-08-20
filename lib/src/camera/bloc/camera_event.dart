part of 'camera_bloc.dart';

abstract class CameraEvent extends Equatable {
  const CameraEvent();

  @override
  List<Object> get props => [];
}

class FlashChangeEvent extends CameraEvent {}

class CameraChangeEvent extends CameraEvent {}

class InitCameraEvent extends CameraEvent {}

class TakePictureEvent extends CameraEvent {}

class RemovePictureEvent extends CameraEvent {}

class SubmitMissionEvent extends CameraEvent {}
