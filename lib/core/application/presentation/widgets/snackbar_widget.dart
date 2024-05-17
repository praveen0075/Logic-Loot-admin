import 'package:flutter/material.dart';

void snackBarWidget({
  required BuildContext context,
  required String msg,
  required Color bgColor,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      backgroundColor: bgColor,
      duration: const Duration(milliseconds: 1600)));
}
