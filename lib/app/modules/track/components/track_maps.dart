import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/page.dart';
import 'package:vanilla_traceability_app/app/modules/track/components/track_bottom_sheet.dart';
import 'package:vanilla_traceability_app/app/modules/track/controllers/track_controller.dart';

class TrackMaps extends GetView<TrackController> {
  const TrackMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return CPage(
      title: "Location Point",
      padding: const EdgeInsets.all(0),
      bottomSheet: const TrackBottomSheet(),
      child: SizedBox(
        height: context.height - (kToolbarHeight * 1.75),
        child: FlutterMap(
          mapController: controller.map,
          options: const MapOptions(),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ],
        ),
      ),
    );
  }
}
