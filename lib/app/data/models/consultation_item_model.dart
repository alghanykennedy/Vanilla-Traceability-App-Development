import 'package:flutter/material.dart';

class ConsultationItemModel {
  final String title;
  final String subTitle;
  final String date;
  final String status;
  final Color statusColor;
  final Color textColor;

  ConsultationItemModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.textColor,
  });
}
