import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/auth/auth_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';

class KbuttonWidget extends StatelessWidget {
  const KbuttonWidget(
      {super.key,
      required this.size,
      required this.formKey,
      required this.emailController,
      required this.passController,
      required this.labeltxt});

  final String labeltxt;
  final Size size;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passController;

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
          onPressed: () {
            if (formKey.currentState!.validate()) {
              context.read<AuthBloc>().add(AuthEvent.logInReqEvent(
                  email: emailController.text.trim(),
                  password: passController.text.trim()));
            }
          },
          child: Text(
            labeltxt,
            style: const TextStyle(color: txtColorWhite, fontSize: 19),
          )),
    );
  }
}
