import 'package:flutter/material.dart';

class AnswerModel {
  final IconData icon;
  final String title;
  final VoidCallback onPress;

  AnswerModel({
    required this.title,
    required this.icon,
    required this.onPress,
  });
}
