import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/page.dart';
import '../components/track_address.dart';
import '../components/track_delivery.dart';
import '../components/track_product.dart';
import '../controllers/track_controller.dart';

class TrackView extends GetView<TrackController> {
  const TrackView({super.key});
  @override
  Widget build(BuildContext context) {
    return const CPage(
      title: "Track Shippment",
      padding: EdgeInsets.fromLTRB(18, 30, 18, 0),
      children: [
        TrackAddress(),
        TrackProduct(),
        TrackDelivery(),
      ],
    );
  }
}
