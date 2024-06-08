
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key, required this.title,this.prIcon,
  });

  final String title;
  final IconButton? prIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // elevation: 5,
      title:  Text(title),
      centerTitle: true,
    );
  }
}
