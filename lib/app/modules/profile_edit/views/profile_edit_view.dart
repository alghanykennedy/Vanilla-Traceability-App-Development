import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/page.dart';
import '../controllers/profile_edit_controller.dart';
import 'components/profile_data.dart';
import 'components/profile_photo.dart';

class ProfileEditView extends GetView<ProfileEditController> {
  const ProfileEditView({super.key});
  @override
  Widget build(BuildContext context) {
    return const CPage(
      title: "Edit Profile",
      padding: EdgeInsets.all(0),
      children: [
        ProfileEditPhotoView(),
        ProfileEditDataView(),
      ],
    );
  }
}
