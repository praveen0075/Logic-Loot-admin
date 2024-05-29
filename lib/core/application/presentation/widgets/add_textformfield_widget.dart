
import 'package:flutter/material.dart';

class AddTextFormFieldWidget extends StatelessWidget {
  const AddTextFormFieldWidget(
      {super.key,
      required this.txt,
      required this.cntrlr,
      required this.errmsg});

  final String txt;
  final TextEditingController cntrlr;
  final String errmsg;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: cntrlr,
      decoration: InputDecoration(
          hintText: txt,
          focusedBorder: const OutlineInputBorder(),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 212, 210, 234)),
      validator: (value) {
        if (value!.isEmpty) {
          return errmsg;
        } else {
          return null;
        }
      },
    );
  }
}
