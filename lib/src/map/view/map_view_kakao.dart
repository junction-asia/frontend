import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:leg_work/src/map/bloc/map_bloc.dart';
import 'package:leg_work/src/memo/view/memo_page.dart';
import 'package:leg_work/utils/constants.dart';

String kakaoMapKey = javaScriptKey;

class KakaoMapTest extends StatefulWidget {
  const KakaoMapTest({super.key});

  @override
  State<KakaoMapTest> createState() => _KakaoMapTestState();
}

class _KakaoMapTestState extends State<KakaoMapTest> {
  late KakaoMapController mapController;
  late Marker marker;
  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(builder: (context, state) {
      state as ProgressMapState;
      double checkLati = state.position.latitude;
      double checkLogi = state.position.longitude;
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            KakaoMap(
              onMapCreated: ((controller) async {
                mapController = controller;
                marker = Marker(
                  markerId: markers.length.toString(),
                  latLng: await mapController.getCenter(),
                  width: 30,
                  height: 44,
                  offsetX: 15,
                  offsetY: 44,
                );

                context
                    .read<MapBloc>()
                    .add(ChangeMapEvent(x: checkLati, y: checkLogi));

                markers.add(marker);

                mapController.addMarker(markers: markers.toList());
              }),
              onMapTap: (latLng) async {
                marker.latLng = latLng;
                double checkLati = latLng.latitude;
                double checkLogi = latLng.longitude;

                mapController.panTo(latLng);
                setState(() {});
                context
                    .read<MapBloc>()
                    .add(ChangeMapEvent(x: checkLati, y: checkLogi));
              },
              markers: markers.toList(),
              center: LatLng(checkLati, checkLogi),
            ),
            Positioned(
              right: 15,
              bottom: 90,
              child: Container(
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                width: 50,
                height: 50,
                child: const Icon(
                  Icons.folder,
                  size: 33,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
                right: 15,
                bottom: 25,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MemoPage(
                                  lands: state.lands!,
                                  landsName: state.landName!,
                                )));
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      color: const Color(0xFF3182F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.folder,
                      size: 33,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
      );
    });
  }
}
