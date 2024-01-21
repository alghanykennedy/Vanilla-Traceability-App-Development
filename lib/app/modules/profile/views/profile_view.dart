import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/page.dart';

import '../controllers/profile_controller.dart';
import 'components/profile_data.dart';
import 'components/profile_photo.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return const CPage(
      title: "Profile",
      padding: EdgeInsets.all(0),
      children: [
        ProfilePhotoView(),
        ProfileDataView(),
      ],
    );
  }
}
