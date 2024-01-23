import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/track_controller.dart';

class TrackView extends GetView<TrackController> {
  const TrackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrackView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TrackView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
