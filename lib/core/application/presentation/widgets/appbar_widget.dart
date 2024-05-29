
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // elevation: 5,
      title:  Text(title),
      centerTitle: true,
    );
  }
}