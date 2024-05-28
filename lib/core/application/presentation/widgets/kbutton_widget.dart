import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/auth/auth_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';

class KbuttonWidget extends StatelessWidget {
  const KbuttonWidget(
      {super.key,
      required this.size,
      required this.formKey,

      required this.labeltxt, this.onpress});

  final String labeltxt;
  final Size size;
  final GlobalKey<FormState> formKey;
  final Function()? onpress;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 1.1,
      height: size.height / 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                appcolorblue,
                appcolorRose,
              ])),
      child: TextButton(
          onPressed:onpress,
          child: Text(
            labeltxt,
            style: const TextStyle(color: txtColorWhite, fontSize: 19),
          )),
    );
  }
}
