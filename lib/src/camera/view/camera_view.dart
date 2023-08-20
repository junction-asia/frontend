import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/camera/bloc/camera_bloc.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final nowState = context.watch<CameraBloc>().state as TakeCameraState;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: FutureBuilder<void>(
              future: nowState.initializeControllerFuture,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return SizedBox(
                    width: size.width,
                    height: size.width,
                    child: ClipRect(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: SizedBox(
                          width: size.width,
                          child: AspectRatio(
                            aspectRatio:
                                1 / nowState.controller!.value.aspectRatio,
                            child: CameraPreview(nowState.controller!),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: const Stack(
                alignment: Alignment.center,
                children: [
                  CaptureWidget(),
                  CamChangeWidget(),
                  FlashChangeWidget(),
                  CaptureWidgetImageList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CaptureWidgetImageList extends StatelessWidget {
  const CaptureWidgetImageList({super.key});

  @override
  Widget build(BuildContext context) {
    final nowState = context.watch<CameraBloc>().state as TakeCameraState;

    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        final nowState = state as TakeCameraState;
        if (nowState.imageList!.isEmpty) {
          return const SizedBox(
            width: 20,
            height: 20,
          );
        } else {
          return Image.file(
            nowState.imageList![nowState.imageList!.length],
            width: 20,
            height: 20,
          );
        }
      },
    );
  }
}

class CaptureWidget extends StatelessWidget {
  const CaptureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            context.read<CameraBloc>().add(TakePictureEvent());
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            padding: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1.0),
              color: Colors.white,
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 3.0),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CamChangeWidget extends StatelessWidget {
  const CamChangeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () async {
          context.read<CameraBloc>().add(CameraChangeEvent());
        },
        icon: const Icon(
          Icons.flip_camera_android,
          color: Colors.white,
          size: 34.0,
        ),
      ),
    );
  }
}

class FlashChangeWidget extends StatelessWidget {
  const FlashChangeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<IconData> flashIcons = [
      Icons.flash_auto,
      Icons.flash_on,
      Icons.flash_off,
    ];
    final nowState = context.watch<CameraBloc>().state as TakeCameraState;
    return Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          icon: Icon(
            flashIcons[nowState.flashIndex],
            color: Colors.white,
            size: 34.0,
          ),
          onPressed: () {
            context.read<CameraBloc>().add(FlashChangeEvent());
          },
        ));
  }
}
