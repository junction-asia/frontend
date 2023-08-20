import 'package:data/data/address/address_export.dart';
import 'package:data/data/land/repository/land_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/map/bloc/map_bloc.dart';
import 'package:leg_work/src/map/view/map_view_separate.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MapBloc(
              landRepository: context.read<LandRepository>(),
              addressRepository: context.read<AddressRepository>(),
            )..add(InitMapEvent()),
        child: const MapViewSeparate());
  }
}
