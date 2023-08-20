import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/map/bloc/map_bloc.dart';
import 'package:leg_work/src/map/view/map_view_kakao.dart';

class MapViewSeparate extends StatelessWidget {
  const MapViewSeparate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        print(state);
        if (state is ProgressMapState) {
          return const KakaoMapTest();
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
