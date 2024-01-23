import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditController extends GetxController {
  final editKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
}
